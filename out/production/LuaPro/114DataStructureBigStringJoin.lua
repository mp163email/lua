---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-21 11:26
--- 大字符串相连： 从文件中读取内容到字符串，一行一行的度。 最快的方法是io.read(*all), 这里用table存储，然后用concat做最后的连接
--- 得到了一个印度故事：汉诺塔。 本例中的优化类似汉诺塔，但不是

local tt = {}
local index = 0
for i = 1, 10 do
    index = index + 1
    tt[index] = i
end
local finalStr = table.concat(tt, ",")--使用的是二分法+栈， 字符大的在最低下。新插入的字符比下面的大，就连接下面的跟更下面的比，如果还大，就再连接，如果比下面的小了就停住
print(finalStr)

local tt = { "ni", "hao", "shi55858", "jie" }
print(#tt[3])--#tt[3]能求 tt[3]内容的字符串长度
for i = #tt, 1, -1 do --等于 for (i = tt.length; i >= 1; i--)
    print(tt[i])
end

--核心算法
function addString (stack, s)
    stack[#stack + 1] = s --将s入栈
    for i = #stack - 1, 1, -1 do
        if #stack[i] > #stack[i + 1] then
            break
        end
        stack[i] =  stack[i] .. "," .. stack[i+1]
        stack[i+1] = nil
    end
end

print("-------------")
local test = {"我", "很自豪", "没有共产党就没有新中国", "前进"}
local stack = {}
for k, v in pairs(test) do
    addString(stack, v)
end
local finalStackStr = table.concat(stack, ",")
print(finalStackStr)




