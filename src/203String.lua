---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2019/2/23 17:30
---
print"---find---"
local str = "hello world"
print(str:find("world"))
print(str:sub(str:find("world")))

print("---收集一个字符串中所有，的位置到一个table中----")
local str1 = "aas,b,c,d,e,f,g"
local function foo1 (str)
    local tt = {}
    local i = 0
    while true do
        i = string.find(str, "," , i+1)--最后一个参数表示从哪个位置开始找
        if i == nil then
            break
        end
        tt[#tt + 1] = i
    end
    return tt
end
local tt = foo1(str1)
for i, v in pairs(tt) do
    print(i, v)
end

print("-------match-------")
str = "Today is 17/7/1990"
print(str:match("%d+"))--碰到一个就返回了
local match = str:gmatch("%d+")--gmatch返回一个迭代器，通过迭代器能取出所有的匹配模式的字符串
for s in match do
    print(s)
end

print("-------gsub-------")
str = "Lua is great"
print(str:gsub("great", "very great"))--第一个返回值表示替换后的串，第二个返回值表示替换了几次
str = "aaaiiii"
print(str:gsub("i", "x"))
print(str:gsub("i", "x", 1))--最后一个参数可以限制替换次数

print("----模式-------")
str = ",,"
print(str:match("[_%a]*"))


