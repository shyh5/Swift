//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 var string = "Hello-Swift"
 //获取某个下标后一个下标对应的字符 char="e"
 //swift2.2
 //var char = string[startIndex.successor()]
 //swift3.0
 var char = string[string.index(after: startIndex)]
 //获取某个下标前一个下标对应的字符 char2 = "t"
 //swift2.2
 //var char2 = string[endIndex.predecessor()]
 //swift3.0
 var char2 = string[string.index(before: string.endIndex)]
 //通过范围获取字符串中的一个子串 Hello
 //swift2.2
 //var subString = string[startIndex...startIndex.advancedBy(4)]
 //swift3.0
 var subString = string[startIndex...string.index(startIndex, offsetBy: 4)]
 //swift2.2
 //var subString2 = string[endIndex.advancedBy(-5)...endIndex.predecessor()]
 //swift3.0
 var subString2 = string[string.index(endIndex, offsetBy: -5)..<endIndex]
 //获取某个子串在父串中的范围
 //swift2.2
 //var range =  string.rangeOfString("Hello")
 //swift3.0
 var range = string.range(of: "Hello")
 //追加字符串操作 此时string = "Hello-Swift! Hello-World"
 //swift2.2
 //string.appendContentsOf(" Hello-World")
 //swift3.0
 string.append(" Hello-World")
 //在指定位置插入一个字符 此时string = "Hello-Swift!~ Hello-World"
 //swift2.2
 //string.insert("~", atIndex: string.startIndex.advancedBy(12))
 //swift3.0
 string.insert("~", at: string.index(string.startIndex, offsetBy: 12))
 //在指定位置插入一组字符 此时string = "Hello-Swift!~~~~ Hello-World"
 //swift2.2
 //string.insertContentsOf(["~","~","~"], at: string.startIndex.advancedBy(12))
 //swift3.0
 string.insert(contentsOf: ["~","~","~"], at: string.index(string.startIndex, offsetBy: 12))
 //在指定范围替换一个字符串 此时string = "Hi-Swift!~~~~ Hello-World"
 //swift2.2
 //string.replaceRange(string.startIndex...string.startIndex.advancedBy(4), with: "Hi")
 //swift3.0
 string.replaceSubrange(string.startIndex...string.index(string.startIndex, offsetBy: 4), with: "Hi")
 //在指定位置删除一个字符 此时string = "Hi-Swift!~~~~ Hello-Worl"
 //swift2.2
 //string.removeAtIndex(string.endIndex.predecessor())
 //swift3.0
 string.remove(at: string.index(before:string.endIndex))
 //删除指定范围的字符 此时string = "Swift!~~~~ Hello-Worl"
 //swift2.2
 //string.removeRange(string.startIndex...string.startIndex.advancedBy(2))
 //swift3.0
 string.removeSubrange(string.startIndex...string.index(string.startIndex, offsetBy: 2))
 var string2 = "My name is Jaki"
 //全部转换为大写
 //swift2.2
 //string2 = string2.uppercaseString
 //swift3.0
 string2 = string2.uppercased()
 //全部转换为小写
 //swift2.2
 //string2 = string2.lowercaseString
 //swift3.0
 string2 = string2.lowercased()
 
 需要注意，在Swift3.0中Range结构体被划分成了两种类型，Range和ClosedRange，分别用来描述左闭右开区间和闭区间，对应到运算符为0..<10和0...10。
 从上面的示例代码中可以看出，String类型中的很多方法命名进行了Swift风格的简化，改动较大的一个点是关于下标index的改变，移除了两个Index下标移动的方法，使用String类型的index()方法来进行下标的移动操作，编程更加安全。
 
 */



//下面的写法是会报错的，索引应该填写index类型
//str.characters[1]

let startIndex1 = str.startIndex
str[startIndex1]

var s="1234567890"
////下面这个方法可能也用不了了
//let index = s.startIndex.advancedBy(5) //swift 2.0+

//3.0改成下面的方法
let advanceIndex = s.index(s.startIndex, offsetBy: 5)
str[advanceIndex]

//前一个字符和后一个字符，具体改动看上面的说明
let beforeIndex = s.index(before: advanceIndex)
str[beforeIndex]

let afterIndex = s.index(after: advanceIndex)
str[afterIndex]

s.insert("!", at: afterIndex)

//加入一组字符串
s.insert(contentsOf: ["#","$","*"], at: afterIndex)



let endIndex = str.endIndex
let scuccessIndex = s.index(s.endIndex, offsetBy: -3)
str[scuccessIndex]



//as
let string : String = "hello, swift"

string.lowercased()//小写
string.uppercased()//大写


string.hasPrefix("he")//头包含
string.hasSuffix("ft")//尾包含








