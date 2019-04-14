import UIKit

/* 変数と定数 */
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
