//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//这里说一下函数变量的使用

func initArray (num : Int) -> String {
    return "\(num) ,hello"
}

let otherArray  = initArray(num: 3)
otherArray

//下面是具体的应用,第一个随机的数组进行排序

var newArray:[Int] = []

for _ in 0..<100 {
     newArray.append(Int(arc4random()) % 100)
}

newArray

//newArray.sort()

//sort函数是可以传入参自定义排序排序顺序的

func absFunc (a: Int , _ b : Int) ->Bool {
    return abs(a - 50) > abs(b - 50) ?  true : false
}


//3.0之前使用的是sort函数，之后使用的就是下面的函数值
newArray.sorted(by: absFunc)


func biggerFunc (a: Int ,b :Int) -> Bool {
    return a > b

}

newArray.sorted(by: biggerFunc)


//等等的函数，可以自定义函数的排序方式，当做参数传入函数中



//函数嵌套

//下面是一个筛选分数的例子

func scoreFunc1 ( score : inout [Int]) {
    for (index , value) in  score.enumerated()  {
        //分数开根号乘以10
        score[index] = Int(sqrt(Double(value)) * 10)
    }
    
}


func scoreFunc2 (score : inout [Int]){
    //这个函数实现的是分数除以150 乘以100，换算成百分制
    for (index,value) in score.enumerated() {
        score[index] = Int(Double(value) / 150.0 * 100.0)
    }

}


var score1 = [60,70,75,40,50]

var score2 = [90,80,70,95,100]

scoreFunc1(score: &score1)

scoreFunc2(score: &score2)

//上面的例子可以发现两个函数虽然内容不同但是定义的方式大概相同，所以我们可以把他们构建成一个函数来实现


func scoreFunc3 (score : inout [Int] , by sFunc:(Int) -> Int){
    for (index,value) in score.enumerated() {
        score[index] = sFunc(value)
    }
    

}

func changeScore1 (score : Int) ->Int{
    return Int(sqrt(Double(score)) * 10)
}

func changeScore2 (score : Int) -> Int{
    return Int(Double(score) / 150.0 * 100.0)
}

scoreFunc3(score: &score1, by: changeScore1)
scoreFunc3(score: &score2, by: changeScore2)


//下面介绍三个常用的嵌套函数

var score3 = [45,60,79,80,90,30]


score3.map(changeScore2)
//可以在定义函数来定义map的规则

func socreFunc4 (score : Int) -> String {
    return score > 60 ? "pass" : "out"
}
score3.map(socreFunc4)

// filter 筛选函数 ，可以自定义筛选标准
func scoreFuc5 (score : Int) -> Bool {
    return score > 75 ? true : false
}

score3.filter(scoreFuc5)

// reduce 把几个数转化成一个数 ,自定义算法规则
func scoreFun6 (a : Int , b: Int) ->Int {
    return a + b
}

score3.reduce(0, scoreFun6)


func stringFormat (a : String ,b : Int) ->String {
    return a + " " + String(b)
}

score3.reduce("", stringFormat)


//返回值类型和函数的嵌套







