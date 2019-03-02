---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-13 15:16
---
--[[
    块注释
--]]

--行注释

--dofile("E:\\LuaPro\\src\\Fun_D.lua")--可以直接将代码引入
--require("Fun_D")--可以直接将代码引入
local ld = loadfile("E:\\LuaPro\\src\\8LoadFun_D.lua")--loadfile不可以把代码直接引入，而是存入变量。 加载代码
print(ld)--是一个函数，这个函数的功能是输出文件中的内容。   运行代码
ld()--当调用变量ld()的时候，文件中的内容会被加载
print(d(10))

---dofile的实现---
function dofile(file)
    local f = loadfile(file)--loadfile更加灵活，可以随时进行调用
    f()
end

print("-------不使用load----------")
function fff()
    i = i + 1--这里的i是一个未定义的变量。如果使i有效，则i应该是一个全局变量
end
i = 0--定义这个全局的变量i
fff();print(i)--调用一次fff这个函数修改i的值
fff();print(i)--再调用一次fff这个函数
print("-------使用load----------")
local f = load("j = j + 1")--一段函数体
j = 0
f();print(j)
f();print(j)



