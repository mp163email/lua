---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-21 9:53
--- 自定义一个Set, lua里for in 不能直接弄一个table, 需要把table包装成一个迭代器函数
--- 让key变的有意义，变成一个有意义的索引。
--- 实现思想就是1个table, 用key来表示set中的元素， 值可以没意义，也可以有特殊意义，比如下例中的值用true来表示是个保留字
--- 一般set会包装成这样的格式  Set = {aa = true, bb = true, cc = true], 这样可以直接if Set[i] then
local list = {"break", "for", "end", "while", "function"}

--自定义了一个迭代器（练手用）
function iterator(list)
    local i = 0
    return function ()
        i = i + 1
        return list[i]
    end
end

for i in iterator(list) do
    print(i)
end

--由list构建一个set
function getSet(list)
    local set = {}
    for i in iterator(list) do
        set[i] = true
    end
    return set
end

local set = getSet(list)
print("----------")
for i, v in pairs(set) do
    print(i, v)
end

local allWorld = {"hello", "break", "function", "world"}

function main(allWorld, baoliuzi)
    for a in iterator(allWorld) do
        if baoliuzi[a] then
            print(a)
        end
    end
end
print("--------")
main(allWorld, set)

---自定义一个set的添加元素的方法
function set_add(set, val)
    set[val] = true
    return set
end

print("--------")
local aset = set_add(set, "return")
for k, v in pairs(aset) do
    print(k)
end


