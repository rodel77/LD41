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
    for k,consequence in ipairs(dialog.consequences) do
        if not checkConsequence(consequence) then
            print("Error in consequence \""..consequence.."\" on dialog "..i)
        end
    end
end

for i,dialog in ipairs(problems) do
    for k,consequence in ipairs(dialog.consequences) do
        if not checkConsequence(consequence) then
            print("Error in consequence \""..consequence.."\" on problem "..i)
        end
    end
    parseSong(dialog.music, "problem "..i);
end

for i,dialog in ipairs(normalDialogs) do
    for k,consequence in ipairs(dialog.consequences) do
        if not checkConsequence(consequence) then
            print("Error in consequence \""..consequence.."\" on normal dialog "..i)
        end
    end
    parseSong(dialog.music, "normal dialog "..i);
end

print("Test finished!")