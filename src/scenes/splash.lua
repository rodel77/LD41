local alpha = 0;
local fade = false;

SplashScene = {
    load = function(this)
    end,
    draw = function(this)
        love.graphics.setColor(1, 1, 1, alpha);
        love.graphics.draw(gfx.splash)
    end,
    update = function(this, dt)
        if fade then
            alpha = alpha - 0.01;

            if alpha < 0 then
                MenuScene:load();
                currentScene = MenuScene;
            end
        else
            alpha = alpha + 0.005;
            
            if alpha > 1 then
                fade = true;
            end
        end
    end,
    keypressed = function(this, key)
        MenuScene:load();
        currentScene = MenuScene;
    end
}