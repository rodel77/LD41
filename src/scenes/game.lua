-- local phoneW = 700
-- local phoneH = 500;

local currentText = "Hello i am Golub!"
local bufferText = "";
local time = 0;
local scale = 0;
local options = {
    "Hello Golub how i can help you",
    "*hang up*"
};
local index = 0;

GameScene = {
    startCall = function(this)
        sfx.startTheme.listeners["beat"] = {this.beat};
        sfx.startTheme:play();
    end,
    draw = function()
        love.graphics.setFont(fonts.slapface);
        love.graphics.print(bufferText, 1280/2, 200, 0, 3+scale, 3+scale, fonts.slapface:getWidth(bufferText)/2, fonts.slapface:getHeight()/2);
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
        scale = 0.5;
        index = index + 1;

        if index>#options then
            index = 1;
        end
    end,
    update = function(this, dt)
        time = time + dt;

        if time>0.01 then
            time = 0;
            if #currentText>#bufferText then
                bufferText = bufferText..string.sub(currentText, #bufferText+1, #bufferText+1);
            end
        end

        if scale > 0 then
            scale = scale - 0.1;
        end

        sfx.startTheme:update();
    end,
    keypressed = function(key)
        if key=="return" then
            print(options[index])
        end
    end
};