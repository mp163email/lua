---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-18 11:23
---
---迭代器：Lua中将迭代器表示为函数

---自定义迭代器：获取int数组中的每个值
print("-----自定义迭代器-----")
local function newIterate(tt)
    local i = 0
    return function()--closure函数，能访问tt和i
        i = i + 1
        return tt[i]
    end
end

---迭代方式一
print("-----while方式----")
local iterate1 = newIterate({1, 2, 3})
while true do
    local v = iterate1()
    if v == nil then
        break
    end
    print(v)
end

print("-----forin方式----")
local myIterator = newIterate({1, 2, 3})
for i in myIterator do
    print(i)
end

---泛型for,就是这种for,in的语法糖，内部步骤是上面while的实现。
---for后面的变量列表个数取决于迭代函数的返回值个数
---他内部保存了三个值， 一个迭代器函数（返回的函数）， 一个恒定状态（tt）, 一个控制变量（返回函数的值）

print("----自定义标准格式的迭代器-----")
---自己实现iparrs
local t1 = {1, 2, 3}
for i, v in ipairs(t1) do--原有实现
    print(i, v)
end

local function iter(t, c)
    c = c + 1
    local v = t[c]
    if v then
        return c, v
    end
end
local function myIpairs(t)
    return iter, t, 0--标准的返回3个参数
end
print("----自定义实现----")
for i, v in myIpairs(t1) do
    print(i, v)
end
