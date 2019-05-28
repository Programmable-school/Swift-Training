import UIKit

/* 拡張関数 */

/**
 * Stringにoutputという関数を拡張
 */
extension String {
    func output() {
        print(self)
    }
}

/**
 * Intにcommentとうい関数を拡張
 */
extension Int {
    func comment() -> String {
        return "数値は\(self)です。"
    }
}

"Hello world".output()  // Hello world
print(100.comment())    // 数値は100です。
