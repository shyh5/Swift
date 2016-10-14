//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var title = "hello Array"

/*
 Swift3.0版本中
 
 remove方法使用如下  remove(at: 3)
 
 removeFirst 和 removeLast也可以传入一个参数，用于从头或者从尾开始删除直到指定索引处为止
 
 removeSubrange是用于删除指定索引范围内的值  removeSubrange(0..<4);
 
    下面是数组的增删改操作，只有可变数组才能执行下面的操作
 */

var number = [1,3,4,5,6]
var value : [String] = ["A","N","W","D","G"]
var height : Array<Float> = [1.2,2.4,2.4,4.5]
//上面是三种声明方法

//增

number.append(7)

number.insert(8, at: 5)

//删

value.removeFirst()

value.removeLast()

value.remove(at: 1)

value.removeAll()

//改
height[2] = 6.7
print(height)


height[1...3] = [3.4]
print(height)


//二维数组 
//声明
var erWeiArray = [[0,2,2,3],[23,442,32,2],[1,1,1,1]]
var arrayEr: Array<Array<Int>> = [[3,4,5,6],[12,3,4,56],[123,214,2423]]



erWeiArray.count//指的不是数组的个数了，而是数组的行数

erWeiArray[1].count

erWeiArray.append([0,0,0,0])

erWeiArray[1].append(90)

//三围数组以此类推即可

var shuzu = [2,3,4,5] as NSArray

/*
   Swift3.0版本中的数组定义时默认就会指定为Array类型，不在默认是NSArray了。
 
   要么显示声明数组类型为NSObject, 要么不声明而是将数组每个数据as NSObject
 
 比如下面的例子：
 
 */



//2.0的时候这样写是正确的
//var shuzu2 : [NSObject] = [1 ,"shuzu",34.9 ]


//3.0之后就是这样写
var shuzu2 : [NSObject] = [1 as NSObject,"shuzu" as NSObject,34.9 as NSObject]






		