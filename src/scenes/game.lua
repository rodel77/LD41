-- local phoneW = 700
-- local phoneH = 500;

local currentText = ""
local bufferText = "";
local time = 0;
local scale = 0;
local options = {};
local index = 1;
local stand = false;
local standTime = 0;
local song = nil;
local costumer = "";
local randomOrc1 = "";

function newRandomCall()
    costumer = randomOrc();
    randomOrc1 = randomOrc();
    local dialog = dialogs[math.random(#dialogs)];
    local phrase = dialog.phrases[math.random(#dialog.phrases)];
    song = sfx.startTheme;
    phrase = string.gsub(phrase, "{orc}", costumer);
    currentText = phrase;
    bufferText = "";
    options = {};

    for i,option in ipairs(dialog.options) do
        options[i] = string.gsub(option, "{orc}", costumer);
    end

    currentScene = GameScene;
    GameScene:playSong();
end

function newProblem()
    local problem = problems[math.random(#problems)];
    local phrase = problem.phrases[math.random(#problem.phrases)];
    phrase = string.gsub(phrase, "{orc}", costumer);
    phrase = string.gsub(phrase, "{random1}", randomOrc1);
    currentText = phrase;
    bufferText = "";
    options = {};

    for i,option in ipairs(problem.options) do
        options[i] = string.gsub(option, "{random1}", randomOrc1);
    end

    if problem.music=="battle" then
        song = sfx.battleTheme;
    end

    song.listeners["beat"] = {};
    index = 1;
    GameScene:playSong();
end

local textWrapping = 300;

GameScene = {
    load = function(this)
    end,
    playSong = function(this)
        
        song.listeners["beat"] = {this.beat};
        song:play();
    end,
    draw = function()
        love.graphics.setFont(fonts.slapface);
        --fonts.slapface:getWidth(bufferText)/2, fonts.slapface:getHeight()/2
        -- local tw = fonts.slapface:getWidth(bufferText);
        -- tw = (tw / textWrapping) * fonts.slapface:getHeight();
        -- print(fonts.slapface:getWidth(bufferText)/textWrapping);
        local w, lines = fonts.slapface:getWrap(bufferText, textWrapping);

        love.graphics.printf(bufferText, 1280/2-textWrapping*(3+scale)/2, 200-(fonts.slapface:getHeight()*#lines), textWrapping, "center", 0, 3+scale, 3+scale);
        love.graphics.setFont(fonts.oeuf);

        for i,option in ipairs(options) do
            if i==index then
                love.graphics.setColor(unpack(yellow));
            end
            love.graphics.print(option, 1280/2, 720/2+((i-1) * fonts.oeuf:getHeight()*3), 0, 2, 2, fonts.oeuf:getWidth(option)/2, fonts.oeuf:getHeight()/2);
            love.graphics.setColor(unpack(white));
        end
    end,
    beat = function(n)
        if not stand then
            scale = 0.2;
            index = index + 1;
            
            if index>#options then
                index = 1;
            end
        end
    end,
    update = function(this, dt)
        time = time + dt;
        if stand then
            standTime = standTime + dt;

            if standTime > 2 then
                this:goNext();
            end
        end

        if time>0.01 then
            time = 0;
            if #currentText>#bufferText then
                bufferText = bufferText..string.sub(currentText, #bufferText+1, #bufferText+1);
            end
        end

        if scale > 0 then
            scale = scale - 0.1;
        end

        song:update();
    end,
    goNext = function(this)
        stand = false;
        standTime = 0;
        newProblem();
    end,
    keypressed = function(key)
        if key=="return" then
            stand = true;
            sfx.pling:play();
            sfx.startTheme:stop();
        end
    end
};