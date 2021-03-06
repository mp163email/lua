---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-16 10:18
---

---回调函数
---创建1-10的数字按钮，带click点击事件的
local function createButton(dist)
    return {text = dist, action = function ()--这里不能将click_call_back(dist)直接赋值给action, 因为访问不到dist, 只有闭合函数才能访问
        click_call_back(dist)
    end}
end

function click_call_back(dist)
    print("点击了数字", dist)
end

local button1 = createButton(1)--这里省略了调用unity创建按钮的底层函数和绑定事件的处理
print(button1.text)
button1.action()--模拟了一下点击事件