---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-14 10:53
---
for i = 1, 10 do
    repeat
        if i % 2 == 0 then
            break
        end
        print(i)
    until true --等于true的时候，跳出循环，跟java截然相反
end