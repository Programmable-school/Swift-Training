import UIKit

/* switch文（条件分岐） */
func func1(year: Int) -> String {
    var result: String = ""
    // if文と同様に条件分岐の目的で利用する。caseに当てはまる場合はその中の処理を実施する。
    switch year {
    case 1988:
        result = "昭和65年"
    case 2019:
        result = "令和1年"
    default:
        result = "わかりません！"
    }
    return result
}

let resultA: String = func1(year: 1988)
let resultB: String = func1(year: 2019)
let resultC: String = func1(year: 1000000)
print(resultA)  // 昭和65年
print(resultB)  // 令和1年
print(resultC)  // わかりません！
