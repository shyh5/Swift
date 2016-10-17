//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//字典与集合


//集合 集合是没有特定的索引顺序的，且里面的元素是唯一的，不能重复

var IntSet: Set = [2,5,6]

var StringSet : Set<String> = ["Tom","Jim","Jay"]

var emptySet = Set<String>()

//增删改

IntSet.insert(4)
IntSet

StringSet.remove("Tom")
StringSet

if emptySet.isEmpty {
    print("emptySet is empty")
}else{
    print("emptySet is full")
}

//遍历
for int1 in IntSet {
    print(int1)
}

//需要按照特定的顺序遍历的时候可以使用 sort() 方法 2.0是sort() ，3.0貌似改成了sorted()

for int2 in IntSet.sorted() {
    print("int2 is \(int2)")
}

//集合的一些相关操作  交集，并集的关系..主要是下面的四个方法。。具体含义看一些输出结果即可

var IntSet2 : Set = [2,3,4,8]

var IntSet3 : Set = [4,5,6,8]

var IntSet4: Set = [34,56,78]


IntSet2.intersection(IntSet3).sorted()

IntSet2.union(IntSet3).sorted()

IntSet2.symmetricDifference(IntSet3).sorted()

IntSet2.subtracting(IntSet3).sorted()


IntSet4.subtracting(IntSet2).sorted()




/*
字典  字典也是无序的集合，相同的键不能赋不同的值，，相同的值可以指向不同的键
 */

var hero = ["瑞兹":"符文法师","杰斯":"未来战士","鳄鱼":"荒漠屠夫"]

//空字典的声明
var emptyDic1 : [String : String] = [:]

var emptyDic2 : Dictionary<Int , String> = [:]

var emptyDic3 = Dictionary<Int,String>()


//
hero["瑞兹"]
print(hero["瑞兹"])
//注意上面的输出，说明输出值也是一个可选型，解包,如下：

if let heros = hero["瑞兹"] {
    print("ture")
}



//遍历

for item in hero {
    print("\(item) is hero")
}

//还可以遍历键值

for(key,value) in hero {
    print("\(key) 's name is \(value)")

}


//只输出键或者值
hero.keys

Array(hero.keys)

hero.values

//字典的比较，和数组相同也是值的比较

var Dic1 : [Int : String] = [1:"a",2:"b",3:"c"]
var Dic2 : [Int : String] = [1:"a",2:"b",3:"c"]

var Dic3 : [Int : String] = [1:"a",3:"c",2:"b"]

Dic1 == Dic2
Dic1 == Dic3



//增删改

var person: [String : String] = ["age":"12","name":"jim","sex":"man"]


person["age"] = "13"
person

person.updateValue("14", forKey: "age")


//如果改变的键值是原字典没有的，则会直接增加到字典中

person["work"] = "developer"
person


person["sex"] = nil
person

person.removeValue(forKey: "age")
person

person.removeAll()













