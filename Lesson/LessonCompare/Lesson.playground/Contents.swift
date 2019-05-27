import UIKit

/** 比較演算子 */

var value: Int = 1
if (value == 1) {
    print("valueは1です。")      // ここは通る
}

if (value != 1) {
    print("valueは1です。")      // ここは通らない
}

if (value > 1) {
    print("valueは1以上です。")        // ここは通らない
} else {
    print("valueは1含め1以下です。")    // ここは通る
}

if (value >= 1) {
    print("valueは1含め1以上です。")    // ここは通る
} else {
    print("valueは1以下です。")        // ここは通らない
}

if (value < 1) {
    print("valueは1以下です。")         // ここは通らない
} else {
    print("valueは1含め1以上です。")     // ここは通る
}

if (value <= 1) {
    print("valueは1含め1以下です。")     // ここは通る
} else {
    print("valueは1以上です。")        // ここは通らない
}
