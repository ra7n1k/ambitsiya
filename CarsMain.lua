-- Author: @Ra7n1k
-- GitHub: https://ra7n1k.wuaze.com
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey


--[====[ HOTKEYS ]====]
-- Press F6 to simulate this file
-- Press F7 to build the project, copy the output from /_build/out/ into the game to use
-- Remember to set your Author name etc. in the settings: CTRL+COMMA


--[====[ EDITABLE SIMULATOR CONFIG - *automatically removed from the F7 build output ]====]
---@section __LB_SIMULATOR_ONLY__
do
    ---@type Simulator -- Set properties and screen sizes here - will run once when the script is loaded
    simulator = simulator
    simulator:setScreen(1, "3x1")
    simulator:setProperty("ExampleNumberProperty", 123)

    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@param ticks     number Number of ticks since simulator started
    function onLBSimulatorTick(simulator, ticks)
        -- touchscreen defaults
        local screenConnection = simulator:getTouchScreen(1)
        simulator:setInputBool(1, screenConnection.isTouched)
        simulator:setInputNumber(1, screenConnection.width)
        simulator:setInputNumber(2, screenConnection.height)
        simulator:setInputNumber(3, screenConnection.touchX)
        simulator:setInputNumber(4, screenConnection.touchY)

        -- NEW! button/slider options from the UI
        simulator:setInputBool(31, simulator:getIsClicked(1))     -- if button 1 is clicked, provide an ON pulse for input.getBool(31)
        simulator:setInputNumber(31, simulator:getSlider(1))      -- set input 31 to the value of slider 1

        simulator:setInputBool(32, simulator:getIsToggled(2))     -- make button 2 a toggle, for input.getBool(32)
        simulator:setInputNumber(32, simulator:getSlider(2) * 50) -- set input 32 to the value from slider 2 * 50
    end;
end
---@endsection


--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!

require("Libs.GammaFix")

require("Libs.DrawCustomText")
require("Libs.DrawLargeText")

ticks = 0
function onTick()
    touched = input.getBool(1)
    inputX = input.getNumber(1)
    inputY = input.getNumber(2)
    speed = math.floor(input.getNumber(3) * 3.6)
    gear = math.floor(input.getNumber(4))
    rps = math.floor(input.getNumber(5))
    fuel = math.floor(input.getNumber(6))
    battery = math.floor(input.getNumber(7) * 100)
    parking = input.getBool(2)
    ticks = ticks + 1

    winchUp = touched and inputX >= w / 2 + 2 and inputX <= w / 2 + 2 + 4 and inputY >= 1 - 1 and inputY <= 1 + 4 - 1
    winchDown = touched and inputX >= w / 2 - 5 and inputX <= w / 2 - 5 + 4 and inputY >= 1 - 1 and inputY <= 1 + 4 - 1


    if winchUp == true then
        output.setBool(1, true)
    else
        output.setBool(1, false)
    end

    if winchDown == true then
        output.setBool(2, true)
    else
        output.setBool(2, false)
    end
end

function onDraw()
    w = screen.getWidth()
    h = screen.getHeight()
    screen.setColor(255, 255, 255)
    drawLargeText(2, math.floor((h - 17) / 2), speed)
    screen.setColor(32, 32, 32)
    screen.drawText(2, math.floor((h - 17) / 2) + 14, "km/h")

    if parking == true then
        screen.drawText(w - 5, math.floor((h - 29) / 2), "P")
    elseif gear == -1 then
        screen.drawText(w - 5, math.floor((h - 29) / 2), "R")
    elseif gear == 0 then
        screen.drawText(w - 5, math.floor((h - 29) / 2), "N")
    elseif gear == 1 then
        screen.drawText(w - 5, math.floor((h - 29) / 2), "D")
    end
    screen.drawText(w - #tostring(rps) * 5 - 15, math.floor((h - 29) / 2) + 8, rps .. "RPS")
    screen.drawText(w - #tostring(fuel) * 5 - 5, math.floor((h - 29) / 2) + 16, fuel .. "L")
    screen.drawText(w - #tostring(battery) * 5 - 5, math.floor((h - 29) / 2) + 24, battery)
    drawCustomText(w - 5, math.floor((h - 29) / 2) + 24, "%")
    if winchDown == true then
        screen.setColor(0, 64, 0)
    else
        screen.setColor(0, 255, 0)
    end
    screen.drawRectF(w / 2 - 5, 1, 5, 5)
    screen.setColor(255, 255, 255)
    screen.drawText(w / 2 - 5 + 1, 1, "+")

    if winchUp == true then
        screen.setColor(64, 0, 0)
    else
        screen.setColor(255, 0, 0)
    end
    screen.drawRectF(w / 2 + 1 + 1, 1, 5, 5)
    screen.setColor(255, 255, 255)
    screen.drawText(w / 2 + 1 + 2, 1, "-")
end
