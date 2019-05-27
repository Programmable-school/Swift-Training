import UIKit

/* while文（繰り返し） */

let nums: [Int] = [0, 1, 2, 3, 4, 5]
var index: Int = 0
var total: Int = nums[0]

// while
while (index < 5) { // whileの条件確認は処理前に行われる。
    total += nums[index]
    index += 1
}
print("total: \(total)")    // total: 10

// repeat-while
repeat {
    print("whileの条件確認は処理後に行われるため、indexは\(index)だけど必ず1回は実行される")  // whileの条件確認は処理後に行われるため、indexは5だけど必ず1回は実行される
} while index < 5 // whileの条件確認は処理後に行われる。

