---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-13 15:46
---
b = "abc"
function test()
    local bb = "bb"
    print(b)--nil
end
f = test;
print(f())
print("aa\taa")
print("aa\vcc")
print("aa\\cc")
print("aa\"cc")
print("aa\97")

print(type("aaa"))

b = nil;

print(b)