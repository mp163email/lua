---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-3-2 11:16
---
print(os.time())--返回的是秒
print(os.time({year = 1970, month = 1, day = 1, hour = 8}))

-- os.date
local tt = os.date("*t", os.time())
for i, v in pairs(tt) do
    print(i, v)
end

print(os.date("Today is %A, in %B"))
print(os.date("%Y-%m-%d : %H-%M-%S"))

-- 其他一些函数
--os.exit() -- 退出程序
print(os.getenv("JAVA_HOME"))--获取环境变量
print(os.getenv("path"))--获取环境变量
