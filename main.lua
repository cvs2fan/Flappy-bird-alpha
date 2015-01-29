-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
display.setStatusBar( display.HiddenStatusBar )
display.setDefault( "textureWrapX", "repeat" )
display.setDefault( "textureWrapY", "repeat" )

local x,y = display.contentCenterX, display.contentCenterY
local bg = display.newRect( x, (y-45), (display.viewableContentWidth + 50), (display.viewableContentHeight + 100) )
bg.fill = { type="image", filename="assets/bg.png" }

display.setDefault( "textureWrapX", "repeat" )
display.setDefault( "textureWrapY", "repeat" )

local x,y = display.contentCenterX, display.contentCenterY
local back1 = display.newRect(x,480, (display.viewableContentWidth + 50), 150 )
back1.fill = { type="image", filename="assets/ground.png" }
local back2 = display.newRect((x*2),480, (display.viewableContentWidth + 50), 150 )
back2.fill = { type="image", filename="assets/ground.png" }
local back3 = display.newRect((x*3),480, (display.viewableContentWidth + 50), 150 )
back3.fill = { type="image", filename="assets/ground.png" }
local back4 = display.newRect((x*4),480, (display.viewableContentWidth + 50), 150 )
back4.fill = { type="image", filename="assets/ground.png" }
local titulo = display.newRect( x, (y-100), (display.viewableContentWidth/2), 80 )
titulo.fill = { type="image", filename="assets/titulo.png" }
local play = display.newRect( x, (y+130), (display.viewableContentWidth/3), 75 )
play.fill = { type="image", filename="assets/play.png" }


 local function scrollBackground(event)
    local xOffset = -8
    
    back1.x = back1.x + xOffset
    back2.x = back2.x + xOffset
    back3.x = back3.x + xOffset
    back4.x = back4.x + xOffset
    if (back1.x) < -(display.contentWidth) then
        back1.x = (display.contentWidth*1.55)
    end
    if (back2.x) < -(display.contentWidth) then
        back2.x = (display.contentWidth*1.55)
    end
    if (back3.x) < -(display.contentWidth) then
        back3.x = (display.contentWidth*1.55)
    end
    if (back4.x) < -(display.contentWidth) then
        back4.x = (display.contentWidth*1.55)
    end
    
end

Runtime:addEventListener( "enterFrame", scrollBackground )