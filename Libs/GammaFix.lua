function gammaFix(r, g, b)
    r = r ^ 2.2 / 255 ^ 2.2 * r
    g = g ^ 2.2 / 255 ^ 2.2 * g
    b = b ^ 2.2 / 255 ^ 2.2 * b

    return math.floor(r), math.floor(g), math.floor(b)
end