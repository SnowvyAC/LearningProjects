local pipeWitdh = 100
local pipeHeight = 300
local function drawPipeUp(xa, ya)
        local x = xa*100
        local y = ya*100
        love.graphics.setColor(love.math.colorFromBytes(100, 255, 100))
        love.graphics.rectangle("fill", x, y, pipeWitdh, pipeHeight)
        love.graphics.rectangle("fill", x-pipeWitdh/4, y+pipeHeight, pipeWitdh+pipeWitdh/2, pipeHeight/6)
        --shadow 1
        love.graphics.setColor(love.math.colorFromBytes(50,200,50))
        love.graphics.rectangle("fill", x, y, pipeWitdh/2.5, pipeHeight)
        --shadow 2
        love.graphics.setColor(love.math.colorFromBytes(30,180,30))
        love.graphics.rectangle("fill", x, y, pipeWitdh/5, pipeHeight+pipeHeight/6)
        love.graphics.rectangle("fill", x-pipeWitdh/4, y+pipeHeight, pipeWitdh/4, pipeHeight/6)
        --shadow 3
        love.graphics.setColor(love.math.colorFromBytes(50,200,50))
        love.graphics.rectangle("fill", x-pipeWitdh/10, y+pipeHeight, pipeWitdh/3, pipeHeight/6)
        --highlight 1
        love.graphics.setColor(love.math.colorFromBytes(150,255,150))
        love.graphics.rectangle("fill", x+pipeWitdh*2/3, y, pipeWitdh/5, pipeHeight)
        --highlight 2
        love.graphics.setColor(love.math.colorFromBytes(200,255,200))
        love.graphics.rectangle("fill", x+pipeWitdh*8/10, y, pipeWitdh/5, pipeHeight+pipeHeight/6)
        love.graphics.rectangle("fill", x+pipeWitdh, y+pipeHeight, pipeWitdh/4, pipeHeight/6)
        --highlight 3
        love.graphics.setColor(love.math.colorFromBytes(150,255,150))
        love.graphics.rectangle("fill", x+pipeWitdh*8/10, y+pipeHeight, pipeWitdh/5, pipeHeight/6)
        --shadow 3
        love.graphics.setColor(love.math.colorFromBytes(32,50,84,50))
        love.graphics.rectangle("fill", x, y+pipeHeight-pipeHeight/10, pipeWitdh, pipeHeight/10)
        love.graphics.rectangle("fill", x, y+pipeHeight-pipeHeight/12, pipeWitdh, pipeHeight/12)
        love.graphics.rectangle("fill", x, y+pipeHeight-pipeHeight/15, pipeWitdh, pipeHeight/15)

        --outline
        love.graphics.setLineWidth(4)
        love.graphics.setColor(love.math.colorFromBytes(0,0,0))
        love.graphics.rectangle("line", x, y, pipeWitdh, pipeHeight)
        love.graphics.rectangle("line", x-pipeWitdh/4, y+pipeHeight, pipeWitdh+pipeWitdh/2, pipeHeight/6)
        
    end
local function drawPipeDown(xa, ya)
        local x = xa*100
        local y = ya*100
        love.graphics.setColor(love.math.colorFromBytes(100, 255, 100))
        love.graphics.rectangle("fill", x, y, pipeWitdh, pipeHeight)
        love.graphics.rectangle("fill", x-pipeWitdh/4, y-pipeHeight/6, pipeWitdh+pipeWitdh/2, pipeHeight/6)
        --shadow 1
        love.graphics.setColor(love.math.colorFromBytes(50,200,50))
        love.graphics.rectangle("fill", x, y, pipeWitdh/2.5, pipeHeight)
        love.graphics.rectangle("fill", x, y-pipeHeight/6, pipeWitdh/4, pipeHeight/6)
        --shadow 2
        love.graphics.setColor(love.math.colorFromBytes(30,180,30))
        love.graphics.rectangle("fill", x, y, pipeWitdh/5, pipeHeight)
        love.graphics.rectangle("fill", x-pipeWitdh/4, y-pipeHeight/6, pipeWitdh/4, pipeHeight/6)
        --highlight 1
        love.graphics.setColor(love.math.colorFromBytes(150,255,150))
        love.graphics.rectangle("fill", x+pipeWitdh*2/3, y, pipeWitdh/5, pipeHeight)
        love.graphics.rectangle("fill", x+pipeWitdh*8/10, y-pipeHeight/6, pipeWitdh/4, pipeHeight/6)
        --highlight 2
        love.graphics.setColor(love.math.colorFromBytes(200,255,200))
        love.graphics.rectangle("fill", x+pipeWitdh*8/10, y, pipeWitdh/5, pipeHeight)
        love.graphics.rectangle("fill", x+pipeWitdh, y-pipeHeight/6, pipeWitdh/4, pipeHeight/6)
        --highlight 3
        love.graphics.setColor(love.math.colorFromBytes(150,255,150))
        love.graphics.rectangle("fill", x+pipeWitdh*8/10, y-pipeHeight/6, pipeWitdh/4, pipeHeight/6)
        --shadow 3
        love.graphics.setColor(love.math.colorFromBytes(32,50,84,50))
        love.graphics.rectangle("fill", x, y, pipeWitdh, pipeHeight/10)
        love.graphics.rectangle("fill", x, y, pipeWitdh, pipeHeight/12)
        love.graphics.rectangle("fill", x, y, pipeWitdh, pipeHeight/15)

        --outline
        love.graphics.setLineWidth(4)
        love.graphics.setColor(love.math.colorFromBytes(0,0,0))
        love.graphics.rectangle("line", x, y, pipeWitdh, pipeHeight)
        love.graphics.rectangle("line", x-pipeWitdh/4, y-pipeHeight/6, pipeWitdh+pipeWitdh/2, pipeHeight/6)
    end
function love.load()
love.graphics.setBackgroundColor(love.math.colorFromBytes(41,209,242))
end
function love.update(dt)
end

function love.draw()

drawPipeUp(1, -1)
drawPipeDown(3, 5)
end