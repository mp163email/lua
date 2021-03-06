---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangyu.
--- DateTime: 2019-2-16 11:26
---
---重定义预定义的一些函数, 比如print等
---经过重新定义后，只能通过受限版本调用原来那个不受限版本了
a = {p = print}--将print赋值给table a 中的元素p
a.p("hello")
print = function (x, y)--将一个求和函数覆盖掉lua预定义的print函数
    return x + y
end
a.p(print(1,3))
print = a.p--重新将打印函数赋值给print

---先屏蔽掉文件打开功能， 等验证完权限后在恢复这个预定义功能. 构造所谓的安全的沙盒环境
function shahe (filename, path, user)
    local oldIoOpen = io.open--先将open函数赋值给一个局部变量保存
    local isAccess = function ()--定义了一个closure函数访问权限, 可以访问user
        if user ~= "miao" then
            print("验证user的权限， 结果为不合法", user)
            return false
        end
        return true
    end
    ---用一个closure重新定义io.open，可以访问外面的局部变量oldIoOpen(对原有功能做了一个封装，内部还是调用原有功能的方法)
    io.open = function(filename, path)--重新定义了io.open
        if isAccess() then--closure可以访问外部变量isAccess, 并且它还是一个函数
            oldIoOpen(filename, path)--closure可以访问外部变量oldIoOpen，并且它还是一个函数。 权限通过的时候调用原来的io.open方法，已经存储到这个变量里了
            return "success", "access"
        else
            return nil, "access denied"
        end
    end
end
shahe("a", "b", "miao")
print(io.open("a"))