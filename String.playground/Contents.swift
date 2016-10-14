//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var name = String("shy")

var age = "hello wrold"


//??不同点？
age = name! + age

var  firstName = "Hu"
let chara = "!"


firstName  = firstName + name!


str = str + chara

str = str.appending(chara)

str.isEmpty


//定义空字符串
var empty = ""
var emptys = String("")

empty.isEmpty
emptys?.isEmpty


//print("my name is \(firstName) i am \(age)")



///字符与Unicode

let title : String = "hello swift"
title.characters.count

let character : Character = "新"
let characterEmil : Character = "😁"

//注意这个unicode
let characterUnicode : Character = "\u{0f34d}"

let characterTitle : Character = "!"




		
