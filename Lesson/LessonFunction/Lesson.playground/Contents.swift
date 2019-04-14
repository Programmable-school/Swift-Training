import UIKit

/* 関数 */
func func1() {
    print("関数です")
}

// 引数指定
func func2(str: String) {
    print(str)
}

// 引数指定
func func3(x: Int, y: Int) -> Int {
    return x + y
}

// パラメータ省略
func func4(_ x: Int, _ y: Int) -> Int {
    return x + y
}

// デフォルト引数
func func5(x: Int, y: Int = 0) -> Int {
    return x + y
}

func1()                          // 関数です
func2(str: "引数を指定できます")      // 引数を指定できます

let result1 = func3(x: 10, y: 2)
print("足し算の関数: \(result1)")     // 足し算の関数: 12

let result2 = func4(10, 2) // _ で引数のパラメータを省略できる
print("足し算の関数: \(result2)")     // 足し算の関数: 12

let result3 = func5(x: 10)
print("足し算の関数: \(result3)")     // 足し算の関数: 10

let result4 = func5(x: 10, y: 2)
print("足し算の関数: \(result4)")     // 足し算の関数: 12
