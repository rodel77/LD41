local menuTweenData = {
    titleY = -100,
    creditY = 720,
    welcomeY = -100,
    playY = 730,
    quitY = 730+75};
local menuTween = nil;
local scale = 0;
local logoWidth = 0;
local Dsize = 0;
local isize = 0;
local ssize = 0;
local csize = 0;
local osize = 0;
local rsize = 0;
local step = false;
local welcome = {
    {1, 1, 1, 1},
    "Welcome to discorc hotline!\nTalk to orcs and solve their problems\nWait for the music to",
    {0.98, 0.87, 0.41, 1},
    " focus ",
    {1, 1, 1, 1},
    "on the option you want to select and press \"Enter\""
};
local index = 1;
local stand = false;

MenuScene = {
    load = function(this)
        logoWidth = fonts.bubble:getWidth("Discorc");
        Dsize = fonts.bubble:getWidth("D");
        isize = fonts.bubble:getWidth("i");
        ssize = fonts.bubble:getWidth("s");
        csize = fonts.bubble:getWidth("c");
        osize = fonts.bubble:getWidth("o");
        rsize = fonts.bubble:getWidth("r");
        menuTween = tween.new(3, menuTweenData, {
            titleY = 100,
            creditY = 720-fonts.oeuf:getHeight()*2,
            welcomeY = 200,
            playY = 720/2+50,
            quitY = 720/2+125});
        
        sfx.menuTheme:on("beat", function(n)
            if not stand then
                scale = 0.6;
                step = not step;
                
                if index == 2 then
                    index = 1;
                else
                    index = 2;
                end
            end
        end);
        
        sfx.menuTheme:play();
    end,
    draw = function(this)
        love.graphics.setColor(unpack(white));
        love.graphics.setFont(fonts.bubble);

        if step then love.graphics.setColor(unpack(white)) else love.graphics.setColor(unpack(yellow)) end
        love.graphics.print("D", 1280/2-(logoWidth/2)*(4+scale), menuTweenData.titleY, 0, 4+scale, 4+scale, 0, fonts.bubble:getHeight()/2);
        love.graphics.print("i", 1280/2-(logoWidth/2)*(4+scale)+Dsize*(scale+4), menuTweenData.titleY, 0, 4+scale, 4+scale, 0, fonts.bubble:getHeight()/2);
        love.graphics.print("s", 1280/2-(logoWidth/2)*(4+scale)+(Dsize+isize)*(scale+4), menuTweenData.titleY, 0, 4+scale, 4+scale, 0, fonts.bubble:getHeight()/2);
        love.graphics.print("c", 1280/2-(logoWidth/2)*(4+scale)+(Dsize+isize+ssize)*(scale+4), menuTweenData.titleY, 0, 4+scale, 4+scale, 0, fonts.bubble:getHeight()/2);
        love.graphics.setColor(unpack(yellow))
        love.graphics.print("o", 1280/2-(logoWidth/2)*(4+scale)+(Dsize+isize+ssize+csize)*(scale+4), menuTweenData.titleY, 0, 4+scale, 4+scale, 0, fonts.bubble:getHeight()/2);
        if step then love.graphics.setColor(unpack(yellow)) else love.graphics.setColor(unpack(white)) end
        love.graphics.print("r", 1280/2-(logoWidth/2)*(4+scale)+(Dsize+isize+ssize+csize+osize)*(scale+4), menuTweenData.titleY, 0, 4+scale, 4+scale, 0, fonts.bubble:getHeight()/2);
        love.graphics.print("c", 1280/2-(logoWidth/2)*(4+scale)+(Dsize+isize+ssize+csize+osize+rsize)*(scale+4), menuTweenData.titleY, 0, 4+scale, 4+scale, 0, fonts.bubble:getHeight()/2);

        love.graphics.setColor(unpack(white));
        love.graphics.setFont(fonts.oeuf)
        love.graphics.print("Ratings: "..rating, 0, 0, 0, 2, 2);
        love.graphics.print("Created by: @therodel77 for Ludum Dare 41", 0, menuTweenData.creditY, 0, 2, 2);
        if index==1 then love.graphics.setColor(unpack(yellow)) else love.graphics.setColor(unpack(white)) end
        love.graphics.print("Answer the phone", 1280/2, menuTweenData.playY, 0, 4+scale, 4+scale, fonts.oeuf:getWidth("Answer the phone")/2, fonts.oeuf:getHeight()/2);
        if index==2 then love.graphics.setColor(unpack(yellow)) else love.graphics.setColor(unpack(white)) end
        love.graphics.print("Quit", 1280/2, menuTweenData.quitY, 0, 4+scale, 4+scale, fonts.oeuf:getWidth("Play")/2, fonts.oeuf:getHeight()/2);
        love.graphics.setColor(unpack(white));
        
        love.graphics.setFont(fonts.slapface);
        love.graphics.printf(welcome, 1280/2-800/2, menuTweenData.welcomeY, 400, "center", 0, 2, 2)

    end,
    update = function(this, dt)
        menuTween:update(dt);
        if not stand then
            sfx.menuTheme:update();
        end
        scale = math.max(0, scale - 0.01);

        if stand and not sfx.phone:isPlaying() then
            newRandomCall();
            currentScene = GameScene;
            stand = false;
        end
    end,
    keypressed = function(key)
        if key=="return" and not stand then
            if index==2 then
                love.event.quit();
            else
                sfx.phone:play();
                stand = true;
                sfx.menuTheme:stop();
            end
        end
    end
}

local tets = false;