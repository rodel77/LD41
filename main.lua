version = "1.0.4";

math.randomseed(love.timer.getTime());

-- Libs
inspect = require "libs/inspect";
lovebpm = require "libs/lovebpm";
tween = require "libs/tween";
CScreen = require "libs/cscreen";

require "src/data";
require "src/utils";
require "src/scenes/scenes";

currentScene = SplashScene;

rating = 0;

function love.load()
    CScreen.init(1280, 720, true);
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
        pip = love.audio.newSource("assets/sound/pip.ogg", "static"),
        phone = love.audio.newSource("assets/sound/phone.ogg", "static"),
        hangup = love.audio.newSource("assets/sound/hangup.wav", "static"),
        menuTheme = lovebpm.newTrack(), -- Orcs Also Have Problems
        startTheme = lovebpm.newTrack(), -- How I Can Help You?
        battleTheme = lovebpm.newTrack(), -- Orc Hobby
        fastTheme = lovebpm.newTrack(), -- A Happy Orc Is Worth A Thousand Humans
        misteryTheme = lovebpm.newTrack(), -- What You Think About This Mr.Sherlorc?
        sadTheme = lovebpm.newTrack(), -- Orc Depression
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

    sfx.misteryTheme:load("assets/sound/mistery.ogg");
    sfx.misteryTheme:setBPM(100);
    sfx.misteryTheme:setLooping(true);

    sfx.sadTheme:load("assets/sound/sad.ogg");
    sfx.sadTheme:setBPM(60);
    sfx.sadTheme:setLooping(true);

    if love.filesystem.getInfo("save")==nil then
        love.filesystem.write("save", "0");
    end

    local content, size = love.filesystem.read("save");
    rating = tonumber(content);


    -- newRandomCall()

    -- currentScene:startCall();
end

function loadImage(path)
    return love.graphics.newImage(path);
end

function love.draw()
    CScreen.apply();
    if currentScene then
        currentScene:draw();
    end
    CScreen.cease();
end

function love.update(dt)
    if currentScene then
        currentScene:update(dt);
    end
end

pressedKeys = {};

function love.keypressed(key)
    pressedKeys[key] = true;

    if pressedKeys["return"] and pressedKeys["lalt"] then
        love.window.setFullscreen(not love.window.getFullscreen());
    elseif key=="escape" then
        love.event.quit();
    elseif key=="f12" then
        love.graphics.captureScreenshot(os.time()..".png");
    else
        if currentScene then
            currentScene.keypressed(key);
        end
    end
end

function love.keyreleased(key)
    pressedKeys[key] = nil;
end

function love.resize(width, height)
	CScreen.update(width, height)
end
