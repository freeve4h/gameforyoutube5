require("Player")
require("Otherthing")

function love.load()
    love.window.setMode(800, 600, {resizable = false})
    Width = 800
    Height = 600
    Player:load()
end

function love.update(dt)
    Player:update(dt)
end

function love.draw()
    Player:draw()
    Otherthing:exist()
end

-- i still have 6 minutes left, and i hvae no idea what to do now dskfjasd;kgjsda;lkj;lfjsd;lkfjsd;lfkjsdf;lksdjf;slkfjas;llkfjas;ldkfjsadlkfjasd;fkjsd;lkfjsd;lfjsdl;kfjsadlfjas;lfkjas;sldkfjas;ldkfjas;ldkfjasd;lkfjsd;alkfjas;ldfkj