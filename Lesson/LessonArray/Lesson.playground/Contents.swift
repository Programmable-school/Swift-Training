import UIKit

/* 配列  */
var nums: [Int] = [0, 1, 2, 3]
print(nums)             //  [0, 1, 2, 3]
print(nums[1])          // 1

// 要素を追加
nums.append(4)
print(nums[4])          // 4

// 最初の要素を取得
let first = nums.first
print(first!)           // 0

// 最後の要素を取得
let last = nums.last
print(last!)            // 4


// 配列の要素がプリミティブ型の場合はコピー渡しになる。
do {
    let array1: [Int] = [0, 1, 2, 3]
    print(array1)       // [0, 1, 2, 3]
    
    var array2 = array1
    array2[0] = 100
    
    print("\(array1), \(array2)")   // 0, 1, 2, 3], [100, 1, 2, 3]
}


// 配列の要素がクラスの場合は参照渡し（コピーではない）なので、array2の変更はarray1にも反映される。
do {
    class Model {
        var value = 10
    }
    do {
        let array1: [Model] = [Model(), Model()]
        dump(array1)
        
        var array2 = array1
        array2[0].value = 100
        
        print("\(array1[0].value), \(array2[0].value)") // 100, 100
    }
}



