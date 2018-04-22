math.randomseed(love.timer.getTime());

-- Libs
inspect = require "libs/inspect";
lovebpm = require "libs/lovebpm";
tween = require "libs/tween";

require "src/data";
require "src/utils";
require "src/scenes/scenes";

currentScene = SplashScene;

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest");

    gfx = {
        splash = loadImage("assets/gfx/splash.png")
    }
    
    fonts = {
        slapface = love.graphics.newFont("assets/fonts/ChevyRay - Slapface.ttf", 13),
        oeuf = love.graphics.newFont("assets/fonts/ChevyRay - Oeuf.ttf", 13),
        bubble = love.graphics.newFont("assets/fonts/ChevyRay - Bubble Time.ttf", 20);
    }
    
    love.graphics.setFont(fonts.slapface);
    
    sfx = {
        pling = love.audio.newSource("assets/sound/pling.wav", "static"),
        phone = love.audio.newSource("assets/sound/phone.ogg", "static"),
        hangup = love.audio.newSource("assets/sound/hangup.wav", "static"),
        menuTheme = lovebpm.newTrack(),
        startTheme = lovebpm.newTrack(),
        battleTheme = lovebpm.newTrack(),
        fastTheme = lovebpm.newTrack(),
    }

    sfx.menuTheme:load("assets/sound/menu.ogg");
    sfx.menuTheme:setBPM(60);
    sfx.menuTheme:setLooping(true);

    sfx.startTheme:load("assets/sound/theme1.ogg");
    sfx.startTheme:setBPM(120);
    sfx.startTheme:setLooping(true);

    sfx.battleTheme:load("assets/sound/battle.ogg");
    sfx.battleTheme:setBPM(65);
    sfx.battleTheme:setLooping(true);

    sfx.fastTheme:load("assets/sound/fast.ogg");
    sfx.fastTheme:setBPM(115);
    sfx.fastTheme:setLooping(true);

    -- newRandomCall()

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
        end
    end
end