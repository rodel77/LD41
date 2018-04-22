-- local phoneW = 700
-- local phoneH = 500;

local currentText = ""
local bufferText = "";
local time = 0;
local scale = 0;
local options = {};
local consequences = {};
local index = 1;
local stand = false;
local standTime = 0;
local song = nil;
local costumer = "";
local randomOrc1 = "";
local waitingCall = true;
local consequence = "";
local localRating = 0;
local problemsSolved = {};
local globalSolved = {}; -- Make every call different so players will enjoy more the game exploring all the problems

function newRandomCall()
    problemsSolved = {};
    costumer = randomOrc();
    randomOrc1 = randomOrc();
    local dialog = dialogs[math.random(#dialogs)];
    local phrase = dialog.phrases[math.random(#dialog.phrases)];
    localRating = 0;
    song = sfx.startTheme;
    phrase = string.gsub(phrase, "{orc}", costumer);
    currentText = phrase;
    bufferText = "";
    options = {};
    consequences = {};
    waitingCall = false;

    for i,option in ipairs(dialog.options) do
        options[i] = string.gsub(option, "{orc}", costumer);
        consequences[i] = dialog.consequences[i];
    end

    currentScene = GameScene;
    GameScene:playSong();
end

function randProblem()
    print("Finding problems, solved", #problemsSolved, "not", #problems);
    if #problemsSolved==#problems then
        print("All problem solved...");
        return nil;
    end

    if #globalSolved==#problems then
        globalSolved = {}; -- Clear the list
    end

    local valid = true;
    local id = math.random(#problems);
    local problem = problems[id];

    for i,solved in ipairs(problemsSolved) do
        print("Iterating", solved, id);
        if solved==id then
            valid = false;
            print("Finding a repeated problem... go again!")
            break;
        end
    end

    for i,gSolved in ipairs(globalSolved) do
        print("Iterating(g)", gSolved, id);
        if gSolved==id  then
            valid = false;
            print("Finding a repeated problem (globally)... go again!")
        end
    end

    if not valid then
        return randProblem();
    else
        table.insert(problemsSolved, id);
        table.insert(globalSolved, id);
        print("Problem", id)
        return problem;
    end
end

function newProblem()
    local problem = randProblem();

    if problem==nil then
        return nil;
    end

    local phrase = problem.phrases[math.random(#problem.phrases)];
    randomOrc1 = randomOrc();
    phrase = string.gsub(phrase, "{orc}", costumer);
    phrase = string.gsub(phrase, "{random1}", randomOrc1);
    currentText = phrase;
    bufferText = "";
    options = {};
    consequences = {};

    for i,option in ipairs(problem.options) do
        options[i] = string.gsub(option, "{random1}", randomOrc1);
        consequences[i] = problem.consequences[i];
    end

    parseSong(problem.music)

    song.listeners["beat"] = {};
    index = 1;
    GameScene:playSong();

    return true;
end

function simpleDialog(number)
    local dialog = normalDialogs[number];
    local phrase = dialog.phrases[math.random(#dialog.phrases)];
    phrase = string.gsub(phrase, "{orc}", costumer);
    phrase = string.gsub(phrase, "{random1}", randomOrc1);
    currentText = phrase;
    bufferText = "";
    options = {};
    consequences = {};

    for i,option in ipairs(dialog.options) do
        options[i] = string.gsub(option, "{random1}", randomOrc1);
        options[i] = string.gsub(options[i], "{orc}", costumer);
        consequences[i] = dialog.consequences[i];
    end

    parseSong(dialog.music)

    song.listeners["beat"] = {};
    index = 1;
    GameScene:playSong();
end

function parseSong(name)
    if name=="battle" then
        song = sfx.battleTheme;
    elseif name=="fast" then
        song = sfx.fastTheme;
    elseif name=="mistery" then
        song = sfx.misteryTheme;
    elseif name=="sad" then
        song = sfx.sadTheme;
    end
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
        if waitingCall then
            return;
        end

        love.graphics.setFont(fonts.slapface);
        --fonts.slapface:getWidth(bufferText)/2, fonts.slapface:getHeight()/2
        -- local tw = fonts.slapface:getWidth(bufferText);
        -- tw = (tw / textWrapping) * fonts.slapface:getHeight();
        -- print(fonts.slapface:getWidth(bufferText)/textWrapping);
        local w, lines = fonts.slapface:getWrap(bufferText, textWrapping);

        love.graphics.printf(bufferText, 1280/2-textWrapping*(3+scale)/2, 200-(fonts.slapface:getHeight()*#lines), textWrapping, "center", 0, 3+scale, 3+scale);
        love.graphics.setFont(fonts.oeuf);
        love.graphics.print("Ratings: "..rating, 0, 0, 0, 2, 2);

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
        if waitingCall then
            standTime = standTime + dt;

            if standTime > 2 then
                standTime = 0;
                waitingCall = false;
                stand = false;
                currentScene = MenuScene;
                sfx.menuTheme:play();
            end
            return;
        end

        time = time + dt;
        if stand then
            standTime = standTime + dt;

            if standTime > 1 then
                this:goNext();
            end
        end

        if time>0.01 then
            time = 0;
            if #currentText>#bufferText then
                bufferText = bufferText..string.sub(currentText, #bufferText+1, #bufferText+1);
                sfx.pip:play();
            end
        end

        if scale > 0 then
            scale = scale - 0.1;
        end

        if not stand then
            song:update();
        end
    end,
    goNext = function(this)
        stand = false;
        standTime = 0;

        if type(consequence) == "number" then
            simpleDialog(consequence);

            print("Redirecting to "..consequence)

            if consequence==1 then
                -- Good rating
                localRating = localRating + 1;
            elseif consequence==2 then
                -- Bad rating
                localRating = localRating - 1;
            end
        elseif consequence=="problem" then
            newProblem();
        elseif consequence=="problem?" then
            if math.random(2)==1 then
                simpleDialog(3);
            else
                if newProblem()==nil then
                    simpleDialog(3);
                end
            end
        end
    end,
    keypressed = function(key)
        if key=="return" and not stand then
            stand = true;

            consequence = consequences[index];

            if consequence=="hangup" then
                sfx.hangup:play();
                waitingCall = true;
                localRating = localRating - 2;
                rating = rating + localRating;
                love.filesystem.write("save", tostring(rating));
            elseif consequence=="hangup-p" then
                sfx.hangup:play();
                waitingCall = true;
                localRating = localRating + 2;
                rating = rating + localRating;
                love.filesystem.write("save", tostring(rating));
            else
                sfx.pling:play();
            end

            song:stop();
        end
    end
};