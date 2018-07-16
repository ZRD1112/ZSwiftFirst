//
//  ViewController.swift
//  ZSwiftFirst
//
//  Created by 公司的mini on 2018/7/16.
//  Copyright © 2018年 tongyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        //常量
        
        //与变量不同，常量的值一旦被确定就不能更改了
        let zcon = 10
        
        //变量
        var zcurrent = 24
        
        //,
        var x = 3, y = 3.222
        
        // :声明类型
        var welcomMsg : String
        
        //赋值
        welcomMsg = "hello"
        
        
        //,也可以多个声明
        var red , green , blue : Double
        
        //你可以用任何你喜欢的字符作为常量和变量名，包括 Unicode 字符：
        

        let 🐱  = "899"
        
        let 你好 = "你的世界"
        
        //常量与变量名不能包含数学符号，箭头，保留的（或者非法的）Unicode 码位，连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。
        
      //  一旦你将常量或者变量声明为确定的类型，你就不能使用相同的名字再次进行声明，或者改变其存储的值的类型。同时，你也不能将常量与变量进行互转。
        
        print(zcon,zcurrent, welcomMsg)
        
        //Swift 用字符串插值（string interpolation）的方式把常量名或者变量名当做占位符加入到长字符串中，Swift 会用当前常量或变量的值替换这些占位符。将常量或变量名放入圆括号中，并在开括号前使用反斜杠将其转义：
        print("The 🐱 is \(🐱)")
        
        print("The 猫 is \(你好)")
        
        
      //  与其他大部分编程语言不同，Swift 并不强制要求你在每条语句的结尾处使用分号（;），当然，你也可以按照你自己的习惯添加分号。有一种情况下必须要用分号，即你打算在同一行内写多条独立的语句：
        
        let cat = "🐱"; print(cat)
        // 输出 "🐱"
        
        
      //  如果你在需要使用 Bool 类型的地方使用了非布尔值，Swift 的类型安全机制会报错。下面的例子会报告一个编译时错误：
      /*
        let i = 1
        if i {
            // 这个例子不会通过编译，会报错
        }
 */
       // 然而，下面的例子是合法的：
        
        let i = 1
        if i == 1 {
            // 这个例子会编译成功
        }
    //    i == 1 的比较结果是 Bool 类型，所以第二个例子可以通过类型检查。类似 i == 1 这样的比较，请参考基本操作符。
        
        
        //元组   可以是不同类型 创建的时候 可以直接 声明名字，你可以通过名字获取 或者角标获取。 对于不想获取的 可以用_
        
         let possibleNumber = "123"
        let zs = "dd2"
        let convertedNumber = Int(possibleNumber)
       let convertedNumber2 = Int(zs)
        print(convertedNumber,convertedNumber2)
        
        
        //Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中，nil 是一个指向不存在对象的指针。在 Swift 中，nil 不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设置为 nil，不只是对象类型。
      //  if 语句以及强制解析
      //  你可以使用 if 语句和 nil 比较来判断一个可选值是否包含值。你可以使用“相等”(==)或“不等”(!=)来执行比较。
        
       // 如果可选类型有值，它将不等于 nil：
        
        if convertedNumber != nil {
            print("convertedNumber contains some integer value.")
        }
        // 输出 "convertedNumber contains some integer value."
     //   当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号（!）来获取值。这个惊叹号表示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析（forced unwrapping）：
        
        if convertedNumber != nil {
            print("convertedNumber has an integer value of \(convertedNumber!).")
        }
        // 输出 "convertedNumber has an integer value of 123."
//        更多关于 if 语句的内容，请参考控制流。
//
//        注意：
//        使用 ! 来获取一个不存在的可选值会导致运行时错误。使用 ! 来强制解析值之前，一定要确定可选包含一个非 nil 的值。
        
        
        
        
        // 2.2 空合运算符  a？？b 是 a != nil ? a!:b的简短表达方法
        
        //区间运算符
        //闭区间运算符 a...b 半开区间运算符 a..<b
        
        
        
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer *= base
            // 1*3
            // 1*3*3
            //...
            print("\(base) to the power of \(power) is \(answer)")
        }
        
        print("\(base) to the power of \(power) is \(answer)")
        
        
        
        let finalSquare = 25
        var board = [Int](repeating: 0, count: finalSquare + 1)
        
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        var square = 0
        var diceRoll = 0
        while square < finalSquare {
            // 掷骰子
            diceRoll += 1
            if diceRoll == 7 { diceRoll = 1 }
            // 根据点数移动
            square += diceRoll
            if square < board.count {
                // 如果玩家还在棋盘上，顺着梯子爬上去或者顺着蛇滑下去
                square += board[square]
            }
        }
        print("Game over!")
        
        print(zfuncFirst(per: "猫"))
        
        
        print(zsome(x: 54))
        
        print(greet(person: "Bill", from: "Cupertino"))
        
        print(zgreet(person: "Lisa", hometown: "Cupertino"))
        
        
        someFunction(1, secondParameterName: 2)
        
        
        zsomeFunction(10)
    }

    
    func greet(person: String, from hometown: String) -> String {
        return "Hello \(person)!  Glad you could visit from \(hometown)."
    }
    
    func zgreet(person: String, hometown: String) -> String {
        return "Hello \(person)!  Glad you could visit from \(hometown)."
    }
    
    
    func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
        // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
    }
    
    
    
    func zsomeFunction(_ firstParameterName: Int) {
        // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
    }
    
    
    
    func zsome(x:Int) -> Int {
        let s = x + 12
        return s
    }
    
    func zfuncFirst(per : String) -> String {
        
        let zgreet = "Hello my" + per + "🐈!"
        return zgreet
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
    
        print("viewwill")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

