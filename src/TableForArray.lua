---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-14 10:29
---
arrays = {
    [-2] = -2,
    [-1] = -1,
    [0] = 0,
    [1] = 1,
    [2] = 2,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [50] = 50,
    ["100"] = "100",
}
print(arrays[-1])
print(arrays[0])
print(#arrays)--打印的是5， 从1开始连续找最大的, 不连续的不算

--遍历
print("------遍历1------")
for key, value in pairs(arrays) do--能全部遍历
    if key % 2 == 0 then
        print("偶数key=", key)
    end
    print(key, " " , value)
end
print("------遍历2------")
for key, value in ipairs(arrays) do--不能全部遍历, 只会打印key从1开始并且连续的递增的值
    print(key .. " " .. value)
end
