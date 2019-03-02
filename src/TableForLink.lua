---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-14 16:33
---

---Table构造一个链表(反向链表), 一说链表就有一个next节点，任何语言都是如此

local list = nil
for i = 1, 10 do
    list = {
        next = list,--第一次循环的时候，list的值是nil, 第二次循环的时候list的值是1
        value = i,
    }
end

local l = list
while l do
    print(l.value)
    l = l.next
end

---自定义一个遍历链表的迭代器, 使用泛型for去表示
print("------自定义迭代器-------")
function nextList(s, c)
    if not c then
        return s
    else
        return c.next
    end
end
function myLinkIter(list)
    return nextList, list, nil
end
for i in myLinkIter(list) do
    print(i.value)
end