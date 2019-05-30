import UIKit

/**
 * static
 *  インスタンスを生成しない静的メンバ・メソッド
 *  静的な保存領域にデータを保持するため、値をどこから読んでも共通
 *  共有パラメータ、値を共有したい時に利用する
 */
class StaticClass {
    static var count: Int = 10
    static func getResult() -> Int {
        return self.count
    }
    func getCount() -> Int {
        return StaticClass.count
    }
    func setCount(_ count: Int) {
        StaticClass.count = count
    }
}


let class1: StaticClass = StaticClass()
print(class1.getCount())        // 10

class1.setCount(200)
print(class1.getCount())        // 200

/**
 * countはstaticのため、class1で設定した値と同じになる
 */
let class2: StaticClass = StaticClass()
print(class2.getCount())        // 200

// クラスのインスタンスを生成しなくてもstaticを直接呼べる
print(StaticClass.count)        // 200

// メソッドも同様に直接呼べる
print(StaticClass.getResult())  // 200
