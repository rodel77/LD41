require "src/data";

function checkConsequence(c)
    if type(c)=="number" then
        return normalDialogs[c]~=nil;
    end

    return c=="hangup" or c=="problem" or c=="problem?" or c=="hangup-p";
end

function parseSong(name, criteria)
    if not (name=="battle" or name=="fast" or name=="mistery" or name=="sad") then
        print("Invalid song \""..name.."\" in "..criteria);
    end
end

print(#dialogs, "dialogs")
print(#problems, "problems")
print(#normalDialogs, "normal dialogs")

for i,dialog in ipairs(dialogs) do
    local valid = false;
    for k,consequence in ipairs(dialog.consequences) do
        if consequence=="hangup" then
            valid = true;
        end

        if not checkConsequence(consequence) then
            print("Error in consequence \""..consequence.."\" on dialog "..i)
        end
    end

    if not valid then
        print("No hangup option in dialog "..i)
    end

    if dialog.phrases==nil then
        print("No phrases in dialog "..i)
    end
end

for i,dialog in ipairs(problems) do
    local valid = false;
    for k,consequence in ipairs(dialog.consequences) do
        if consequence=="hangup" then
            valid = true;
        end
        
        if not checkConsequence(consequence) then
            print("Error in consequence \""..consequence.."\" on problem "..i)
        end
    end

    if not valid then
        print("No hangup option in problem "..i)
    end

    parseSong(dialog.music, "problem "..i);

    if dialog.phrases==nil then
        print("No phrases in problem "..i)
    end
end

for i,dialog in ipairs(normalDialogs) do
    local valid = false;
    for k,consequence in ipairs(dialog.consequences) do
        if consequence=="hangup" then
            valid = true;
        end

        if not checkConsequence(consequence) then
            print("Error in consequence \""..consequence.."\" on normal dialog "..i)
        end
    end

    if not valid then
        print("No hangup option in normal dialog "..i)
    end

    parseSong(dialog.music, "normal dialog "..i);

    if dialog.phrases==nil then
        print("No phrases in normal dialog "..i)
    end
end

print("Test finished!")