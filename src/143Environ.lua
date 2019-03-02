---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-22 14:35
--- 通过setfenv方法来改变环境（全局）, lua5.2就废弃掉了。使用_ENV来代替
--[[
a = 10
print(a)
print("--------")
_ENV = {g = _G, a = 20}
g.print(a)--自定义环境的
g.print(g.a)--还是原始环境的
]]

---使用继承
--a = 1
--local mmt = {}
--setmetatable(mmt, {__index = _G})
--_ENV = {1,mmt}
--print(a)

function factory()
    return function ()
        return xxx
    end
end
local fac = factory()
xxx = "abcdefg"
print(fac())
_ENV = {g = _G, xxx = "xxxx"}
g.print(fac())
