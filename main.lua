require "src/utils"
require "src/scenes/scenes"

-- Libs
lovebpm = require "libs/lovebpm";
tween = require "libs/tween";

currentScene = GameScene;

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
        startTheme = lovebpm.newTrack()
    }

    sfx.startTheme:load("assets/sound/theme1.ogg");
    sfx.startTheme:setBPM(120);
    sfx.startTheme:setLooping(true);


    currentScene:startCall();
    -- local theme1 = love.audio.newSource("sound/theme1.ogg", "static");
    -- theme1:setLooping(true);
    -- theme1:play();
    -- music = lovebpm.newTrack();
    -- music:load("sound/theme1.ogg");
    -- music:setBPM(120);
    -- music:setLooping(true);
    -- music:on("beat", function(n)
    --     print("beat "..n);
    -- end);
    -- music:play();
end

function loadImage(path)
    return love.graphics.newImage(path);
end

function love.draw()
    currentScene:draw();
end

function love.update(dt)
    currentScene:update(dt);
end

function love.keypressed(key)
    if key=="escape" then
        love.event.quit();
    else
        -- currentScene:startCall();
        currentScene.keypressed(key);
    end
end