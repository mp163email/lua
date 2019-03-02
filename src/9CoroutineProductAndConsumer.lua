---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-18 16:16
---

---生产者，消费者---
--[[
local a = io.read()--控制台输入
print(a)
io.write("aaa", "\n")--输出==print
]]

print("----------")

--生产者发送数据
local function send(x)
    coroutine.yield(x)--可以把参数x返回给调用者resumer，这一点很牛叉
end

--生产者
function producter()
    return coroutine.create(function ()
        for i = 1, 10 do
            send(i)
        end
    end)
end
local pt = producter()
--消费者
local function consumer()
    local status, value = coroutine.resume(pt)
    print(status, value)
end

--消费者驱动
for i = 1, 10 do
    consumer()
end




