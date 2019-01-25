import UIKit

/* Hello! World.を表示 */
func lessonHelloWorld() {
   print("Hello! World.") // Hello! World.
}
print("---- Lesson_HelloWorld ----")
lessonHelloWorld()
print("------------------\n")

/* 変数と定数 */
func lessonLetConst() {
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
lessonLetConst()
print("------------------\n")

/* プリミティブ型、Any型  */
func lessonPriAny() {
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
lessonPriAny()
print("------------------\n")

/*
 Optional型
 Optional型の場合はnilの場合があるかも？という意味で?をつける。
 */
func lessonOptional() {
    var strA: String? = nil
    // var strA: String = null  // Optional型以外でnullを入れるとコンパイルエラーになる
    // print(strA.length)     // strAがnullの場合があるためコンパイルエラーになる
    
    print(strA)                 // nil
    print(strA?.count)          // nil
    
    strA = "hogehoge"
    print(strA)                 // Optional("hogehoge")
    print(strA?.count)          // Optional(8)
}

print("---- Lesson_Optional ----")
lessonOptional()
print("------------------\n")

/*
 Optional Binding, Unwrap
 Optionalのデータを安全に取り出す。
 */
func lessonOptionalBinding() {
    // 書き方1
    var strA: String? = nil
    if let str = strA {
        // nilのため表示されない
        print(str)
    } else {
        print("This is nil.")               // This is nil.
    }
    
    strA = "hogehoge"
    if let str = strA {
        print(str)                          // hogehoge
    }
    
    if let tmp = strA, tmp == "hogehoge" {
        print("これは\(tmp)だよ")            // これはhogehogeだよ
    }
    
    // 書き方2
    guard let tmpA = strA else {
        // strAがnullならこのreturnで返す
        return
    }
    print("strAは\(tmpA)")                   // strAはhogehoge
    
    let strB: String? = nil
    guard let tmpB = strB else {
        print("strBはnilなのでreturnする")    // strBはnilなのでreturnする
        return
    }
    // strBはnilのため表示されない
    print("strBは\(tmpB)")
}
/* Optional Binding,  Unwrap */
print("---- Lesson_OptionalBinding ----")
lessonOptionalBinding()
print("------------------\n")

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
/* 拡張関数 */
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
/* ジェネリクス */
/* クロージャ */
/* コールバック*/
/* ReactiveX */
