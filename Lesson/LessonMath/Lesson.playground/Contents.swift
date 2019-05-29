import UIKit

/* 数学関数 */

/** 四捨五入 */
let round1 = round(5.71)
let round2 = round(5.21)
print("round \(round1), \(round2)")  // round 6.0, 5.0

/** 切り上げ */
let ceil1 = ceil(5.71)
let ceil2 = ceil(5.21)
print("ceil \(ceil1), \(ceil2)")    // ceil 6.0, 6.0

/** 小数点以下を切り捨てて最大整数を返す */
let floor1 = floor(5.71)
let floor2 = floor(-5.71)
print("floor \(floor1), \(floor2)") // floor 5.0, -6.0

/** 乗数 */
let pow1 = pow(2, 3)
let pow2 = pow(3, 10)
print("pow \(pow1), \(pow2)")       // pow 8, 59049


/** 小数第X+1桁で四捨五入した値を返す関数 */
func roundFunc(_ value: Double, _ digit: UInt) -> Double {
    let divisibility = pow(10, Double(digit))
    return round(value*divisibility)/divisibility
}
let value: Double = 5.72468
print(roundFunc(value, 0))  // 6.0
print(roundFunc(value, 1))  // 5.7
print(roundFunc(value, 2))  // 5.72
print(roundFunc(value, 3))  // 5.725

