---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-14 11:01
---
function maxn(tt)
    local maxKey = nil;
    for key, value in pairs(tt) do
        if type(key) == "number" then
            if maxKey == nil then
                maxKey = key
            end
            if maxKey < key then
                maxKey = key
            end
        end
    end
    return maxKey
end

tt = {
    [1] = 1,
    ["100"] = "100",
    [10] = 10,
}
print(maxn(tt))