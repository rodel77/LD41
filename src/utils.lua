-- Colors

yellow = {0.98, 0.87, 0.41};
white = {1, 1, 1};

function randomOrc()
    local gender = math.random(2);
    local name = "";

    if gender == 1 then
        name = orcs.female[math.random(#orcs.female)];
    else
        name = orcs.male[math.random(#orcs.male)];
    end
    return name;
end

function oprint(text, x, y, wrap, align, rotation, sx, sy, ox, oy)
end

function shallowcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end