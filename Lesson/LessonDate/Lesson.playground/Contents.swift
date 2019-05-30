import UIKit

/* 日付関数（Date） */

// 現在の日時を取得
let date: Date = Date()
print(date)

// タイムゾーンとフォーマットの指定
do {
    let formatter = DateFormatter()
    formatter.timeZone = TimeZone(identifier: "Asia/Tokyo") // タイムゾーンの設定
    formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"            // 表記
    let string = formatter.string(from: Date())
    print(string)
}


// 文字列から日時を取得
do {
    let string: String = "2019/1/6 10:20:30"
    let formatter: DateFormatter = DateFormatter()
    formatter.calendar = Calendar.current
    formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
    let date: Date = formatter.date(from: string)!
    print(date)
}

// Dateから日時を取得する
do {
    // Dateから日時を取得
    let calendar = Calendar.current
    let date = Date()
    var componets = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
    
    // 曜日を取得
    let weekday = calendar.component(.weekday, from: date) - 1
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "ja")
    let weekDay: String = formatter.weekdaySymbols[weekday]
    
    print("\(componets.year!)/\(componets.month!)/\(componets.day!)（\(weekDay)） \(componets.hour!):\(componets.minute!):\(componets.second!)")
}

// 日時を設定したDateを生成する
do {
    let calendar = Calendar.current
    var componets = DateComponents()
    componets.year = 2018
    componets.month = 1
    componets.day = 20
    componets.hour = 12
    componets.minute = 30
    componets.second = 50
    let date = calendar.date(from: componets)!
    
    // 曜日を取得
    let weekday = calendar.component(.weekday, from: date) - 1
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "ja")
    let weekDay: String = formatter.weekdaySymbols[weekday]
    
    print("\(date)（\(weekDay)）")
}

