math.randomseed(love.timer.getTime());

inspect = require "libs/inspect";

require "src/data";
require "src/utils";
require "src/scenes/scenes";

-- Libs
lovebpm = require "libs/lovebpm";
tween = require "libs/tween";

currentScene = nil;


function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest");

    gfx = {
        phone = loadImage("assets/gfx/phone.png")
    }
    
    fonts = {
        slapface = love.graphics.newFont("assets/fonts/ChevyRay - Slapface.ttf", 13);
        oeuf = love.graphics.newFont("assets/fonts/ChevyRay - Oeuf.ttf", 13);
    }
    
    love.graphics.setFont(fonts.slapface);
    
    sfx = {
        pling = love.audio.newSource("assets/sound/pling.wav", "static"),
        startTheme = lovebpm.newTrack(),
        battleTheme = lovebpm.newTrack()
    }

    sfx.startTheme:load("assets/sound/theme1.ogg");
    sfx.startTheme:setBPM(120);
    sfx.startTheme:setLooping(true);

    sfx.battleTheme:load("assets/sound/mistery.ogg");
    sfx.battleTheme:setBPM(100);
    sfx.battleTheme:setLooping(true);

    newRandomCall()

    -- currentScene:startCall();
end

function loadImage(path)
    return love.graphics.newImage(path);
end

function love.draw()
    if currentScene then
        currentScene:draw();
    end
end

function love.update(dt)
    if currentScene then
        currentScene:update(dt);
    end
end

function love.keypressed(key)
    if key=="escape" then
        love.event.quit();
    else
        if currentScene then
            currentScene.keypressed(key);
        else

        end
    end
end