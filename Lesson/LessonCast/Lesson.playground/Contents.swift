import UIKit

/* キャスト変換（型変換） */

do {
    let valueInt: Int = Int("100")!         // String -> Int
    let valueString: String = String(200)   // Int -> String
    print("value \(valueInt)")
    print("value \(valueString)")
}

/**
 * 型チェック
 * 型チェックには is を使う。
 * Any型からの変換は as を使う。
 */
func checkType(_ value: Any) {
    if (value is Int) {
        let val: Int = value as! Int      // Any -> Int
        print("value is Int \(val)")
    }
    if (value is Double) {
        let val: Double = value as! Double // Any -> Double
        print("value is Double \(val)")
    }
    if (value is String) {
        let val: String = value as! String // Any -> String
        print("value is String \(val)")
    }
}

checkType(100)      // value is Int 100
checkType(100.123)  // value is Double 100.123
checkType("100")    // value is String 100

