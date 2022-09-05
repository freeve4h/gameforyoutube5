Player = {}

function Player:load()
    Player.xpos = 400
    Player.ypos = 300 
    Player.Width = 32 
    Player.Height = 32 
    Player.Speed = 400
end

function Player:update(dt)
    if love.keyboard.isDown("up") then 
        Player.ypos = Player.ypos - Player.Speed * dt 
    end
    if love.keyboard.isDown("down") then 
        Player.ypos = Player.ypos + Player.Speed * dt 
    end
    if love.keyboard.isDown("left") then 
        Player.xpos = Player.xpos - Player.Speed * dt 
    end
    if love.keyboard.isDown("right") then 
        Player.xpos = Player.xpos + Player.Speed * dt 
    end
    Player:bounds()
end

function Player:draw()
    love.graphics.rectangle("fill", Player.xpos, Player.ypos, Player.Width, Player.Height)
end

function Player:bounds()
    if Player.xpos < 0 then 
        Player.xpos = 0 
    end
    if Player.xpos + Player.Width > Width then 
        Player.xpos = Width - Player.Width 
    end
    if Player.ypos < 0 then 
        Player.ypos = 0 
    end
    if Player.ypos + Player.Height > Height then 
        Player.ypos = Height - Player.Height 
    end
end