import UIKit

/* Hello! World.を表示 */
func Lesson_HelloWorld() {
   print("Hello! World.") // Hello! World.
}
print("---- Lesson_HelloWorld ----")
Lesson_HelloWorld()
print("------------------\n")

/* 変数と定数 */
func Lesson_LetConst() {
    // 変数
    var count: Int = 1
    count += 1
    
    var message: String = ""
    message = "Lesson \(count)"
    print(message)  // Lesson 2
    
    // 定数
    let name: String = "山田太郎"
    // name = "Yamada Taro" // 定数のためビルドエラーになる
    print(name)     // 山田太郎
}
print("---- Lesson_LetConst ----")
Lesson_LetConst()
print("------------------\n")

/* プリミティブ型、Any型  */
func Lesson_PriAny() {
    // プリミティブ型
    let numInt: Int = 10            // Int型（整数のみ）
                                    // 32bitの場合 2147483647 〜 -2147483648
                                    // 64bitの場合 -9223372036854775808 〜　9223372036854775807
    let numUint: UInt = 100         // UInt型（正の整数のみ）
                                    // 32bitの場合 0 〜 -2147483648
                                    // 64bitの場合 0 〜　9223372036854775807
    let numDouble: Double = 10.123  // Double型（浮動小数点数型） 64bit
    let numFloat: Float = 10.123    // Double型（浮動小数点数型） 32bit
    let str: String = "文字列"       // String型
    let isActive: Bool = true       // Bool型（trueかfalse）
    
    print("numInt \(numInt)")       // numInt 10
    print("numUint \(numUint)")     // numUint 100
    print("numDouble \(numDouble)") // numDouble 10.123
    print("numFloat \(numFloat)")   // numFloat 10.123
    print("str \(str)")             // str 文字列
    print("isActive \(isActive)")   // isActive true
    
    // Any型（なんでも入る）
    var variable: Any
    variable = 1
    print("number \(variable)") // number 1
    
    variable = "文字列"
    print("String \(variable)") // String 文字列
    
    variable = false
    print("Bool \(variable)")   // Bool false
    
    variable = Date()
    print("class \(variable)")  // class 2019-01-03T00:23:46.481Z
}
print("---- Lesson_PriAny ----")
Lesson_PriAny()
print("------------------\n")

/* Optional型 */
/* null安全 */
/* Optional Binding */
/* 演算子 */
/* 配列 */
/* Dictionary型 */
/* filter, map, reduce, sort */
/* if分 */
/* 比較演算子 */
/* AND・OR */
/* 三項演算子 */
/* switch文 */
/* while文 */
/* for文 */
/* 関数 */
/* Enum */
/* 構造体 */
/* クラス */
/* 値渡し参照渡し */
/* キャスト変換 */
/* 日付関数（Date） */
/* 数値計算（Math） */
/* static */
/* 継承 */
/* プロトコル */
/* 拡張関数 */
/* ジェネリクス */
/* クロージャ */
/* コールバック*/
/* ReactiveX */
