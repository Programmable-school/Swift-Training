import UIKit

/**
 * Optional型
 * Optional型の場合はnilの場合があるかも？という意味で?をつける。
 **/
var strA: String? = nil
// var strA: String = null  // Optional型以外でnullを入れるとコンパイルエラーになる
// print(strA.length)     // strAがnullの場合があるためコンパイルエラーになる

print(strA)                 // nil
print(strA?.count)          // nil

strA = "hogehoge"
print(strA)                 // Optional("hogehoge")
print(strA?.count)          // Optional(8)