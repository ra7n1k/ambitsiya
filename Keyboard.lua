--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/symbolsTabORMWORKS_VSCodeExtension/issues - by Nameous Changey


--[====[ HOTKEYS ]====]
-- Press F6 to simulate this file
-- Press F7 to build the project, copy the output from /_build/out/ into the game to use
-- Remember to senter your Author name etc. in the settings: CTRL+COMMA


--[====[ EDITABLE SIMULATOR CONFIG - *automatically removed from the F7 build output ]====]
---@section __LB_SIMULATOR_ONLY__
do
    ---@type Simulator -- Senter properties and screen sizes here - will run once when the script is loaded
    simulator = simulator
    simulator:setScreen(1, "3x2")
    simulator:setProperty("ExampleNumberProperty", 123)

    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@param simulator Simulator Use simulator:<function>() to senter inputs etc.
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
        simulator:setInputNumber(31, simulator:getSlider(1))      -- senter input 31 to the value of slider 1

        simulator:setInputBool(32, simulator:getIsToggled(2))     -- make button 2 a toggle, for input.getBool(32)
        simulator:setInputNumber(32, simulator:getSlider(2) * 50) -- senter input 32 to the value from slider 2 * 50
    end;
end
---@endsection


--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to genter this, and use all the LifeBoatAPI.<functions>!

s = screen

function bgColor(color, a)
    a = a or 255
    r, g, b = 8, 8, 8
    if color == 1 then r, g, b = 0, 0, 0 end
    if color == 2 then r, g, b = 16, 16, 16 end
    if color == 3 then r, g, b = 32, 32, 32 end
    if color == 4 then r, g, b = 32, 32, 32 end
    if color == 5 then r, g, b = 255, 255, 255 end
    s.setColor(r, g, b, clamp(0, a, 255))
end

function clamp(d, e, f) return math.min(math.max(d, e), f) end

function setKey(x, points, y, assign, key, Symbols)
    x = x + 9 * points
    if key then
        bgColor(4)
    else
        if Symbols == 1 then bgColor(2) else bgColor() end
    end
    s.drawRectF(x, y, 8, 9)
    bgColor(5)
    if assign == ">" then x = x + 1 end
    s.drawTextBox(x, y, 8, 9, assign, 0, 0)
end

symbolsTab = false
alphabets = false
symobls = 0
function iR(rX, rY, rW, rH, t) return t and X > rX and Y > rY and X < rX + rW and Y < rY + rH end

function ir(rX, u, rY) return iR(rX + u * 9, rY, 9, 10, touched) end

function gN(...)
    local a = {}
    for b, c in ipairs({ ... }) do a[b] = input.getNumber(c) end; return table.unpack(a)
end

function onTick()
    W, H, X, Y = gN(1, 2, 3, 4)
    touched = input.getBool(1)
    xPos = W / 2 - 46
    yPos = (H - 49) / 2
    oneKey = ir(xPos, 0, yPos)
    twoKey = ir(xPos, 1, yPos)
    threeKey = ir(xPos, 2, yPos)
    fourKey = ir(xPos, 3, yPos)
    fiveKey = ir(xPos, 4, yPos)
    sixKey = ir(xPos, 5, yPos)
    sevenKey = ir(xPos, 6, yPos)
    eightKey = ir(xPos, 7, yPos)
    nineKey = ir(xPos, 8, yPos)
    zeroKey = ir(xPos, 9, yPos)
    yPos = yPos + 10
    qKey = ir(xPos, 0, yPos)
    wKey = ir(xPos, 1, yPos)
    eKey = ir(xPos, 2, yPos)
    rKey = ir(xPos, 3, yPos)
    tKey = ir(xPos, 4, yPos)
    yKey = ir(xPos, 5, yPos)
    uKey = ir(xPos, 6, yPos)
    iKey = ir(xPos, 7, yPos)
    oKey = ir(xPos, 8, yPos)
    pKey = ir(xPos, 9, yPos)
    xPos = xPos + 4
    yPos = yPos + 10
    aKey = ir(xPos, 0, yPos)
    sKey = ir(xPos, 1, yPos)
    dKey = ir(xPos, 2, yPos)
    fKey = ir(xPos, 3, yPos)
    gKey = ir(xPos, 4, yPos)
    hKey = ir(xPos, 5, yPos)
    jKey = ir(xPos, 6, yPos)
    kKey = ir(xPos, 7, yPos)
    lKey = ir(xPos, 8, yPos)
    yPos = yPos + 10
    stKey = iR(xPos - 4, yPos, 13, 21, touched)
    bsKey = iR(xPos + 9 * 8, yPos, 15, 10, touched)
    zKey = ir(xPos, 1, yPos)
    xKey = ir(xPos, 2, yPos)
    cKey = ir(xPos, 3, yPos)
    vKey = ir(xPos, 4, yPos)
    bKey = ir(xPos, 5, yPos)
    nKey = ir(xPos, 6, yPos)
    mKey = ir(xPos, 7, yPos)
    yPos = yPos + 10
    commaKey = ir(xPos, 1, yPos)
    periodKey = ir(xPos, 7, yPos)
    spaceKey = iR(xPos + 9 * 2, yPos, 44, 10, touched)
    enter = iR(xPos + 9 * 8, yPos, 15, 10, touched)
    tab = iR(xPos - 3, yPos, 12, 9, touched)
    if tab and alphabets ~= tab then
        if symbolsTab then
            symbolsTab = false
            symbols = 0
        else
            symbolsTab = true
            symbols = 29
        end
    end
    signal = 0
    if bsKey then signal = 1 end
    if enter then signal = 2 end
    if oneKey then signal = 3 end
    if twoKey then signal = 4 end
    if threeKey then signal = 5 end
    if fourKey then signal = 6 end
    if fiveKey then signal = 7 end
    if sixKey then signal = 8 end
    if sevenKey then signal = 9 end
    if eightKey then signal = 10 end
    if nineKey then signal = 11 end
    if zeroKey then signal = 12 end
    if qKey then signal = 13 + symbols end
    if wKey then signal = 14 + symbols end
    if eKey then signal = 15 + symbols end
    if rKey then signal = 16 + symbols end
    if tKey then signal = 17 + symbols end
    if yKey then signal = 18 + symbols end
    if uKey then signal = 19 + symbols end
    if iKey then signal = 20 + symbols end
    if oKey then signal = 21 + symbols end
    if pKey then signal = 22 + symbols end
    if aKey then signal = 23 + symbols end
    if sKey then signal = 24 + symbols end
    if dKey then signal = 25 + symbols end
    if fKey then signal = 26 + symbols end
    if gKey then signal = 27 + symbols end
    if hKey then signal = 28 + symbols end
    if jKey then signal = 29 + symbols end
    if kKey then signal = 30 + symbols end
    if lKey then signal = 31 + symbols end
    if zKey then signal = 32 + symbols end
    if xKey then signal = 33 + symbols end
    if cKey then signal = 34 + symbols end
    if vKey then signal = 35 + symbols end
    if bKey then signal = 36 + symbols end
    if nKey then signal = 37 + symbols end
    if mKey then signal = 38 + symbols end
    if spaceKey then signal = 39 + symbols end
    if commaKey then signal = 40 end
    if periodKey then signal = 41 end
    alphabets = tab
    output.setNumber(9, signal)
end

keys = "1234567890qwertyuiopasdfghjklzxcvbnm ,.!@#$%^&*()_{}[]:;\"\'+-=<>/?"
function k(i) return string.sub(keys, i, i) end

function onDraw()
    width = s.getWidth()
    height = s.getHeight()
    widthCenter = width / 2
    heightCenter = height / 2
    bgColor(1)
    s.drawRectF(0, 0, width, height)
    symbols = 0
    if symbolsTab then symbols = 29 end
    x = widthCenter - 45
    y = (height - 49) / 2
    setKey(x, 0, y, k(1), oneKey, 1)
    setKey(x, 1, y, k(2), twoKey, 1)
    setKey(x, 2, y, k(3), threeKey, 1)
    setKey(x, 3, y, k(4), fourKey, 1)
    setKey(x, 4, y, k(5), fiveKey, 1)
    setKey(x, 5, y, k(6), sixKey, 1)
    setKey(x, 6, y, k(7), sevenKey, 1)
    setKey(x, 7, y, k(8), eightKey, 1)
    setKey(x, 8, y, k(9), nineKey, 1)
    setKey(x, 9, y, k(10), zeroKey, 1)
    y = y + 10
    setKey(x, 0, y, k(11 + symbols), qKey)
    setKey(x, 1, y, k(12 + symbols), wKey)
    setKey(x, 2, y, k(13 + symbols), eKey)
    setKey(x, 3, y, k(14 + symbols), rKey)
    setKey(x, 4, y, k(15 + symbols), tKey)
    setKey(x, 5, y, k(16 + symbols), yKey)
    setKey(x, 6, y, k(17 + symbols), uKey)
    setKey(x, 7, y, k(18 + symbols), iKey)
    setKey(x, 8, y, k(19 + symbols), oKey)
    setKey(x, 9, y, k(20 + symbols), pKey)
    y = y + 10
    x = x + 4
    setKey(x, 0, y, k(21 + symbols), aKey)
    setKey(x, 1, y, k(22 + symbols), sKey)
    setKey(x, 2, y, k(23 + symbols), dKey)
    setKey(x, 3, y, k(24 + symbols), fKey)
    setKey(x, 4, y, k(25 + symbols), gKey)
    setKey(x, 5, y, k(26 + symbols), hKey)
    setKey(x, 6, y, k(27 + symbols), jKey)
    setKey(x, 7, y, k(28 + symbols), kKey)
    setKey(x, 8, y, k(29 + symbols), lKey)
    y = y + 10
    setKey(x, 1, y, k(30 + symbols), zKey)
    setKey(x, 2, y, k(31 + symbols), xKey)
    setKey(x, 3, y, k(32 + symbols), cKey)
    setKey(x, 4, y, k(33 + symbols), vKey)
    setKey(x, 5, y, k(34 + symbols), bKey)
    setKey(x, 6, y, k(35 + symbols), nKey)
    setKey(x, 7, y, k(36 + symbols), mKey)
    y = y + 10
    x = x + 9
    if spaceKey then bgColor(3) else bgColor() end
    s.drawRectF(x + 9, y, 44, 9)
    setKey(x, 0, y, ",", commaKey, 1)
    setKey(x, 6, y, ".", periodKey, 1)
    if symbolsTab then bgColor(3) else bgColor(2) end
    s.drawRectF(x - 13, y, 12, 9)
    x = widthCenter - 45
    y = y - 11
    if bsKey then bgColor(3) else bgColor(2) end
    s.drawRectF(x + 76, y + 1, 13, 9)
    bgColor(5)
    s.drawText(x + 79, y + 3, "<-")
    s.drawText(x + 4, y + 13, "#")
    s.drawRectF(x + 38, y + 13, 10, 1)
    y = y + 10
    if enter then bgColor(3) else bgColor(2) end
    s.drawRectF(x + 76, y + 1, 13, 9)
    bgColor(5)
    s.drawText(x + 79, y + 1 + 2, "=>")
end
