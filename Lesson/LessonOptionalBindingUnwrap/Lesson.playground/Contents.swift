import UIKit

/**
 * Optional Binding, Unwrap
 * Optionalのデータを安全に取り出す。
 **/
// 書き方1
func func1() {
    var strA: String? = nil
    if let str = strA {
        // nilのため表示されない
        print(str)
    } else {
        print("This is nil.")               // This is nil.
    }

    strA = "hogehoge"
    if let str = strA {
        print(str)                          // hogehoge
    }

    if let tmp = strA, tmp == "hogehoge" {
        print("これは\(tmp)だよ")            // これはhogehogeだよ
    }

    // 書き方2
    guard let tmpA = strA else {
        // strAがnullならこのreturnで返す
        return
    }
    print("strAは\(tmpA)")                   // strAはhogehoge

    let strB: String? = nil
    guard let tmpB = strB else {
        print("strBはnilなのでreturnする")    // strBはnilなのでreturnする
        return
    }
    // strBはnilのため表示されない
    print("strBは\(tmpB)")
}

func1()
