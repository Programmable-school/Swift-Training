import UIKit

/* filter, map, reduce, sort */

let nums: [Int] = [0, 1, 2, 3, 4, 5]

/**
 * filter
 *  条件に合う値だけを取り出します。条件に当てはまる要素が複数ある場合があるので配列で取得される。
 */
let filter1: [Int] = nums.filter { $0 >= 3 }
let filter2: [Int] = nums.filter { (num) -> Bool in
    if (num >= 3) {
        return true
    } else {
        return false
    }
}

print("filter1 :\(filter1)")    // filter1 :[3, 4, 5]
print("filter2 :\(filter2)")    // filter2 :[3, 4, 5]


/**
 * map
 *  新しい要素の配列を作成する。値を加工して新しい配列を作成するときに利用する。
 */
let map1: [Int] = nums.map { $0 * 2 }
let map2: [Int] = nums.map { (num) -> Int in
    return num * 2
}
print("map1 :\(map1)")    // map1 :[0, 2, 4, 6, 8, 10]
print("map2 :\(map2)")    // map2 :[0, 2, 4, 6, 8, 10]


/**
 * reduce
 *  配列の要素を左から右へ適用し,単一の値にします。
 *  第一引数は初期値を指定します。
 */
let reduce1 = nums.reduce(0, +)
let reduce2 = nums.reduce(1, +)
let reduce3 = nums.reduce(0) { (num1, num2) -> Int in
    num1 + num2
}

print("reduce1 :\(reduce1)")    // reduce1 :15
print("reduce2 :\(reduce2)")    // reduce2 :16
print("reduce3 :\(reduce3)")    // reduce3 :15

/**
 * sort
 *  配列の要素を並べ替える。
 */
let sort1: [Int] = nums.sorted()
let sort2: [Int] = nums.reversed()
let sort3: [Int] = nums.sorted { $0 < $1 }
let sort4: [Int] = nums.sorted { $0 > $1 }
print("sort1 :\(sort1)")    // sort1 :[0, 1, 2, 3, 4, 5]
print("sort2 :\(sort2)")    // sort2 :[5, 4, 3, 2, 1, 0]
print("sort3 :\(sort3)")    // sort3 :[0, 1, 2, 3, 4, 5]
print("sort4 :\(sort4)")    // sort4 :[5, 4, 3, 2, 1, 0]
