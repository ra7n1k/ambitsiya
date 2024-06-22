function drawLargeText(cX, cY, text)
    text = tostring(text)
    local texts = {}
    for i = 0, #text do
        table.insert(texts, text:sub(i, i))
    end
    local rcX = cX
    for e = 1, #texts do
        if texts[e] == "0" then
            screen.drawLine(rcX, cY + 2, rcX, cY + 6 + 1)
            screen.drawLine(rcX + 6, cY + 2, rcX + 6, cY + 6 + 1)
            screen.drawLine(rcX + 2, cY, rcX + 4 + 1, cY)
            screen.drawLine(rcX + 2, cY + 8, rcX + 4 + 1, cY + 8)
            screen.drawLine(rcX + 2, cY, rcX - 1, cY + 2 + 1)
            screen.drawLine(rcX + 4, cY, rcX + 6 + 1, cY + 2 + 1)
            screen.drawLine(rcX, cY + 6, rcX + 2 + 1, cY + 8 + 1)
            screen.drawLine(rcX + 6, cY + 6, rcX + 4 - 1, cY + 8 + 1)
            rcX = rcX + 8
        end
        if texts[e] == "1" then
            screen.drawLine(rcX + 3, cY, rcX + 3, cY + 8)
            screen.drawLine(rcX + 2 + 1, cY, rcX, cY + 2 + 1)
            screen.drawLine(rcX + 1, cY + 8, rcX + 6, cY + 8)
            rcX = rcX + 8
        end
        if texts[e] == "2" then
            screen.drawLine(rcX + 2, cY, rcX + 5, cY)
            screen.drawLine(rcX + 2, cY, rcX - 1, cY + 2 + 1)
            screen.drawLine(rcX + 4, cY, rcX + 6 + 1, cY + 2 + 1)
            screen.drawLine(rcX + 6, cY + 2, rcX - 1, cY + 8 + 1)
            screen.drawLine(rcX, cY + 8, rcX + 6 + 1, cY + 8)
            rcX = rcX + 8
        end
        if texts[e] == "3" then
            screen.drawLine(rcX + 2, cY, rcX + 4 + 1, cY)
            screen.drawLine(rcX + 2, cY + 8, rcX + 4 + 1, cY + 8)
            screen.drawLine(rcX + 2, cY, rcX - 1, cY + 2 + 1)
            screen.drawLine(rcX + 4, cY, rcX + 6 + 1, cY + 2 + 1)
            screen.drawLine(rcX, cY + 6, rcX + 2 + 1, cY + 8 + 1)
            screen.drawLine(rcX + 6, cY + 6, rcX + 4 - 1, cY + 8 + 1)
            screen.drawLine(rcX + 6, cY + 2, rcX + 4 - 1, cY + 4 + 1)
            screen.drawLine(rcX + 4, cY + 4, rcX + 6 + 1, cY + 6 + 1)
            screen.drawLine(rcX + 2, cY + 4, rcX + 4 + 1, cY + 4)
            rcX = rcX + 8
        end
        if texts[e] == "4" then
            screen.drawLine(rcX + 4, cY, rcX + 4, cY + 8 + 1)
            screen.drawLine(rcX + 4, cY, rcX, cY + 5 + 1)
            screen.drawLine(rcX, cY + 5, rcX + 6 + 1, cY + 5)
            rcX = rcX + 8
        end
        if texts[e] == "5" then
            screen.drawLine(rcX, cY, rcX + 5 + 1, cY)
            screen.drawLine(rcX, cY, rcX, cY + 4 + 1)
            screen.drawLine(rcX, cY + 4, rcX + 4 + 1, cY + 4)
            screen.drawLine(rcX, cY + 8, rcX + 4 + 1, cY + 8)
            screen.drawLine(rcX + 4, cY + 4, rcX + 6 + 1, cY + 6 + 1)
            screen.drawLine(rcX + 6, cY + 6, rcX + 4 - 1, cY + 8 + 1)
            rcX = rcX + 8
        end
        if texts[e] == "6" then
            screen.drawLine(rcX + 2, cY, rcX + 4 + 1, cY)
            screen.drawLine(rcX + 2, cY + 8, rcX + 4 + 1, cY + 8)
            screen.drawLine(rcX + 2, cY, rcX - 1, cY + 2 + 1)
            screen.drawLine(rcX + 4, cY, rcX + 6 + 1, cY + 2 + 1)
            screen.drawLine(rcX, cY + 6, rcX + 2 + 1, cY + 8 + 1)
            screen.drawLine(rcX + 6, cY + 6, rcX + 4 - 1, cY + 8 + 1)
            screen.drawLine(rcX + 2, cY + 4, rcX - 1, cY + 6 + 1)
            screen.drawLine(rcX + 4, cY + 4, rcX + 6 + 1, cY + 6 + 1)
            screen.drawLine(rcX + 2, cY + 4, rcX + 4, cY + 4)
            screen.drawLine(rcX, cY + 2, rcX, cY + 6 + 1)
            rcX = rcX + 8
        end
        if texts[e] == "7" then
            screen.drawLine(rcX, cY, rcX + 6 + 1, cY)
            screen.drawLine(rcX + 5 + 1, cY, rcX + 2 - 1, cY + 8 + 1)
            rcX = rcX + 8
        end
        if texts[e] == "8" then
            screen.drawLine(rcX + 2, cY, rcX + 4 + 1, cY)
            screen.drawLine(rcX + 2, cY + 8, rcX + 4 + 1, cY + 8)
            screen.drawLine(rcX + 2, cY, rcX - 1, cY + 2 + 1)
            screen.drawLine(rcX + 4, cY, rcX + 6 + 1, cY + 2 + 1)
            screen.drawLine(rcX, cY + 6, rcX + 2 + 1, cY + 8 + 1)
            screen.drawLine(rcX + 6, cY + 6, rcX + 4 - 1, cY + 8 + 1)
            screen.drawLine(rcX, cY + 2, rcX + 2 + 1, cY + 4 + 1)
            screen.drawLine(rcX + 6, cY + 2, rcX + 4 - 1, cY + 4 + 1)
            screen.drawLine(rcX + 2, cY + 4, rcX - 1, cY + 6 + 1)
            screen.drawLine(rcX + 4, cY + 4, rcX + 6 + 1, cY + 6 + 1)
            screen.drawLine(rcX + 2, cY + 4, rcX + 4, cY + 4)
            rcX = rcX + 8
        end
        if texts[e] == "9" then
            screen.drawLine(rcX + 2, cY, rcX + 4 + 1, cY)
            screen.drawLine(rcX + 2, cY + 8, rcX + 4 + 1, cY + 8)
            screen.drawLine(rcX + 2, cY, rcX - 1, cY + 2 + 1)
            screen.drawLine(rcX + 4, cY, rcX + 6 + 1, cY + 2 + 1)
            screen.drawLine(rcX, cY + 6, rcX + 2 + 1, cY + 8 + 1)
            screen.drawLine(rcX + 6, cY + 6, rcX + 4 - 1, cY + 8 + 1)
            screen.drawLine(rcX, cY + 2, rcX + 2 + 1, cY + 4 + 1)
            screen.drawLine(rcX + 6, cY + 2, rcX + 4 - 1, cY + 4 + 1)
            screen.drawLine(rcX + 2, cY + 4, rcX + 4, cY + 4)
            screen.drawLine(rcX + 6, cY + 2, rcX + 6, cY + 6 + 1)
            rcX = rcX + 8
        end
    end
end
