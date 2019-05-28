import UIKit

/* クロージャ */

var closure1: () -> () = {
    print("Hello world.")
}
var closure2: (Int) -> String = { value -> String in
    return "数値は\(value)"
}
class ClassA {
    var closure3: ((Int) -> ())?
    
    func process() {
        self.closure3?(1000)
    }
}


closure1()                  // Hello world.
print(closure2(20))         // 数値は20
let classA = ClassA()
classA.closure3 = { value in
    // classA.processを呼ぶと、ココの処理が実行される。
    print("数値は\(value)")
}
classA.process()            // 数値は1000


// コールバック
func func1(completion: (Int) -> ()) {
    completion(5000)
}

func1 { (value) -> () in
    print("数値は\(value)")    // 数値は5000
}

