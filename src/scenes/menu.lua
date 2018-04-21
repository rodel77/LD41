local menuTweenData = {titleY = -100, creditY = 720};
local menuTween = nil;

MenuScene = {
    load = function(this)
        menuTween = tween.new(3, menuTweenData, {titleY = 100, creditY = 720-fonts.oeuf:getHeight()*2});
    end,
    draw = function(this)
        love.graphics.setColor(unpack(white));
        love.graphics.setFont(fonts.bubble);
        love.graphics.print("Discoorc", 1280/2, menuTweenData.titleY, 0, 4, 4, fonts.bubble:getWidth("Discorc")/2, fonts.bubble:getHeight()/2);
        love.graphics.setFont(fonts.oeuf)
        love.graphics.print("Created by: @therodel77", 0, menuTweenData.creditY, 0, 2, 2);
    end,
    update = function(this, dt)
        menuTween:update(dt);
    end
}