import UIKit

/* プリミティブ型、Any型  */
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
