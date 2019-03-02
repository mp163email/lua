local mt = {}
setmetatable(_G, mt)
mt.__index = function (t,k)
    print("aaaaaa")
end
print(sssx)