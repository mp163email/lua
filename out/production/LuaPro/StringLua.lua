---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-14 11:24
---
---
---Lua具有很强大的处理字符串的功能，处理100K或者1M是很常见的
---
a = 'one string'
b = string.gsub(a, "one", "another")--替换
print(a)
print(b)
x = [[
    <html>
        <body>
            <head>
                <title>This is a page</title>
            </head>
            <a href = "http://www.lua.org">Lua</a>
        </body>
    </html>
]]
---[[
print(x)
--]]