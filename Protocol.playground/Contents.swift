//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Protocol"


//Mutating 方法要求  主要用于值类型（结构体和枚举）的实例方法中，需要改变协议中方法的值时使用。

protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch : Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
            
        case .on:
            self = .off
            
        }
    }
    
}


var switch1 = OnOffSwitch.off
switch1.toggle()


//构造器类型

protocol anyProtocol {
    init(someParameter: Int)
}

//构造器要求在类中的实现  需要required修饰符

class SomeClass: anyProtocol {
    required init(someParameter: Int) {
        //这里是构造器的实现部分
    }
}
//使用 required 修饰符可以确保所有子类也必须提供此构造器实现，从而也能符合协议。值得注意的是：如果类已经被标记为 final ，那么不需要在协议构造器的实现中使用 required 修饰符，因为 final 类不 能有子类；如果一个子类重写了父类的指定构造器，并且该构造器满足了某个协议的要求，那么该构造器的实现需要同时标 注 required 和 override 修饰符:

protocol someProtocol {
    init()
}

class SomeSuperClass {
    init() {
        //这里是构造器的实现部分
    }
}

class SomeSubClass : SomeSuperClass , someProtocol {
    //因为采纳协议 + required
    //因为继承父类  + override
    required override init (){
        //这里是构造器实现的部分
    }
    
}





		