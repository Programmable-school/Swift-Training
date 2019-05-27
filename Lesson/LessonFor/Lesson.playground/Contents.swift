import UIKit

/* for文（繰り返し）*/
let nums: [Int] = [0, 1, 2, 3, 4, 5]

// for
for i in 0..<nums.count {
    print("for i:\(i), num:\(nums[i])")  // for i:0, num:0 ... for i:5, num:5
}

// for
for i in nums {
    print("for i:\(i), num:\(nums[i])")  // for i:0, num:0 ... for i:5, num:5
}

// forEach（オススメ）
nums.enumerated().forEach { (i, num) in
    print("forEach i:\(i) num:\(num)")  // forEach i:0 num:0 ... forEach i:5 num:5
}
