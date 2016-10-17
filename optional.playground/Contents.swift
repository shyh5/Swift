//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var errorCode : String? = "404"


//这样强制解包可能会发生错误！！！
"this errorCode is" + errorCode!


//下面就是较为正确的解包过程，不需要加！强行解包
if let errorCode = errorCode {
    "errorCode is" + errorCode;
}else{
    "404"
}

// Optional Chaining

var errorString : String? = "not found"


if let errorString = errorString {
    errorString.uppercased()
}

//等价于下面的写法 errorString?就是一个解包的过程，调用方法直接在后面打点调用
let errorString1 = errorString?.uppercased();

//下面还有一个例子说明

var errorMessage: String? = nil


//一般声明对象需要付初值 ，但是我们想根据errorMessage的值来判断初值是多少，就可以按照下面几种方法
let messag : String

if let errorMessage = errorMessage{
    messag = errorMessage
}else{
    messag  = "no error"
    
}

//可以等价于下面的两种写法
let message = errorMessage == nil ? "no error" : errorMessage
//这是swift提供的写法。。上面是c中的三目运算符
let message2 = errorMessage ?? "no error"





//更多类型的可选性的应用
var cople : (error: Int , errorCode : String?) = (404,"not found")
cople.errorCode = nil
cople
//下面写就是错的
//cople = nil

var cople1 : (error: Int, errorMessage : String)? = (404, "not found")
cople1 = nil;

//下面的写法就是错误的
//cople1?.errorMessage = nil

var cople2 : (error:Int , errorMessage : String?)? = (404,"not found")
cople2?.errorMessage = nil
cople2 = nil



var age: String = "16"
var name: String = "name"

var age2 = Int(age)


//此时的age3就是Int？类型
var age3 = Int(name)

if let age2 = Int(age) , age2 < 30{
    print("ture finish")
}


var stirng1 = "SHyH5"



//!是隐式可选性，，，赋值的时候可以赋值为nil，使用的时候也不用解包，但是在使用之前一定要对其先赋值

var city : String? = "shanghai"
var town : String! = nil


town = "luling"
//需要解包
"city" + city!

"town" + town







