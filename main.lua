--main.lua
--Marlon Poddalgoda

--Backround & Title
display.setDefault( "background", 100/255, 0, 250/255 )

local myText = display.newText( "Marlon's Calculator", 160, -30, native.systemFont, 20 )
myText:setFillColor( 255/255, 100/255, 0 )

--variables
local SideAOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 300, 30 )
SideAOfTrapezoidTextField.id = "SideA textField"

local SideBOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 300, 30 )
SideBOfTrapezoidTextField.id = "SideB textField"

local HeightOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 250, 300, 30 )
HeightOfTrapezoidTextField.id = "Height textField"

local areaOfTrapezoidTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 25 )
areaOfTrapezoidTextField.id = "area textField"
areaOfTrapezoidTextField:setFillColor( 1, 1, 1 )

--calculate button
local calculateButton = display.newImageRect( "./assets/calculate.png", 250, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
 --function
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local SideAOfTrapezoid
    local SideBOfTrapezoid
    local areaOfTrapezoid
 
    SideAOfTrapezoid = SideAOfTrapezoidTextField.text
    SideBOfTrapezoid = SideBOfTrapezoidTextField.text
    HeightOfTrapezoid = HeightOfTrapezoidTextField.text
    areaOfTrapezoid = ((SideAOfTrapezoid + SideBOfTrapezoid)/2)*HeightOfTrapezoid
    -- print( areaOfTrapezoid )
    areaOfTrapezoidTextField.text = "The area is " .. areaOfTrapezoid

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )