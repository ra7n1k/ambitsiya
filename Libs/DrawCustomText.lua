function drawCustomText(cX, cY, text, r, g, b, a)
    text = tostring(text)
    if r and g and b then
        if a then
            screen.setColor(r, g, b, a)
        end
        screen.setColor(r, g, b) 
    end
    local texts = {}
    for i = 0, #text do
        table.insert(texts, text:sub(i, i))
    end
    local rcX = cX
    for i = 1, #texts do
        if texts[i] == "%" then
            screen.drawLine(rcX + 3, cY, rcX - 1, cY + 6 - 1)
            screen.drawLine(rcX, cY, rcX + 1, cY + 1)
            screen.drawLine(rcX + 3, cY + 4, rcX + 3 + 1, cY + 4 + 1)
            rcX = rcX + 5
        end
        if texts[i] == "E" then
            screen.drawLine(rcX, cY, rcX + 3, cY)
            screen.drawLine(rcX, cY + 4, rcX + 3, cY + 4)
            screen.drawLine(rcX + 3, cY + 1, rcX+ 3, cY + 4)
            screen.drawLine(rcX + 1, cY + 2, rcX + 2 + 1, cY + 2)
        end
    end
    screen.setColor(255, 255, 255)
end
