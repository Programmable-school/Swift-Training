import UIKit

/* AND・OR, 三項演算子  */
let isActive: Bool = true
let age: Int = 20

// AND
if (isActive && age == 20) {
    print("AND isActiveとageが共にtrue")    // ここを通る
} else {
    print("条件式に当てはまらない")           // ここは通らない
}

// OR
if (isActive || age == 30) {
    print("OR isActiveかageがtrue")    // ここを通る
} else {
    print("条件式に当てはまらない")
}

// 三項演算子
let resultA: String = isActive && age == 20 ? "AND isActiveとageが共にtrue" : "条件式に当てはまらない"
let resultB: String = isActive || age == 30 ? "OR isActiveかageがtrue" : "条件式に当てはまらない"
print(resultA)  // AND isActiveとageが共にtrue
print(resultB)  // OR isActiveかageがtrue


