---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-16 14:51
---尾调用消除
---尾调用：当f调用完g后，再无其他事情可做。这种情况程序就不需要再返回f,也不需要保存任何f的栈信息和空间，而是直接goto到g里
---其他的语言就会出现栈溢出
function f (x)
    return g(x)
end

function foo(n)
    if n > 0 then
        return foo(n - 1)
    end--这里没有else不会报错，java会
end
print(foo(100))--这里数很大的情况下不会栈溢出，java会
print("==========Start a Game===========")
--[[
有5个房间， R1-R5，每个房间东西南北各有4个门，有的门是堵死的不能走，只有开着的才能走。
要求：玩家从R1房间开始走，在控制台输入"N， S, W, E"来控制走向哪个门，走到R5房间输出胜利， 程序结束。
实现：利用Lua的尾调用编写状态机实现

                N

        -----------------
        |       |       |
        |   R1     R2   |
        |       |       |
W       ---   -----   ---       E
        |       |       |
        |   R3     R4   |
        |       |       |
        -----------   ---
                |       |
                |  R5   |
                |       |
                ---------

                S
]]--
local R1, R2, R3, R4, R5

local function R1()
    print("R1 Room")
    local move = io.read()
    if move == "E" then
        return R2()
    elseif move == "S" then
        return R3()
    else
        print("Can Not Move")
        return R1()--这里很巧妙，又回到自己
    end
end

R2 = function ()
    print("R2 Room")
    local move = io.read()
    if move == "W" then
        return R1()
    elseif move == "S" then
        return R4()
    else
        print("Can Not Move")
        return R2()--这里很巧妙，又回到自己
    end
end

R3 = function()
    print("R3 Room")
    local move = io.read()
    if move == "N" then
        return R1()
    elseif move == "E" then
        return R4()
    else
        print("Can Not Move")
        return R3()--这里很巧妙，又回到自己
    end
end

R4 = function()
    print("R4 Room")
    local move = io.read()
    if move == "N" then
        return R2()
    elseif move == "W" then
        return R3()
    elseif move == "S" then
        return R5()
    else
        print("Can Not Move")
        return R4()--这里很巧妙，又回到自己
    end
end

R5 = function()
    print("R5 Room, You Win !!!! ")
end

print("You Stay R1 Romm, Enter A Char In [N, S, W, E]")
R1()