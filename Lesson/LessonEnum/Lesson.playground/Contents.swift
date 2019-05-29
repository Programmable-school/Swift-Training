import UIKit

/* 列挙型（enum） */
/**
 * 列挙型、値を定義できる
 */

/** enum */
enum Color {
    case red
    case blue
    case yellow
}

/**
 * enum（raw value enum）
 * 割り当てたい型を継承すると値型enumになる
 * caseの1番目から値は0から始まる
 */
enum Social: Int {
    case twitter
    case facebook
    case instagram
}

/** caseの定義値に値を設定することもできる */
enum Score: Int {
    case normal = 50
    case great = 80
    case perfect = 100
}

/**
 * enum（Associated Value）
 * 列挙型の中に複数の変数を埋め込むことができます。
 */
enum Order {
    case buy(item: String, price: Int)
    case sell(item: String, price: Int)
}
func orderFunc(_ type: Order) {
    switch type {
    case let Order.buy(item: item, price: price):
        print("buy \(item) \(price)")
    case let Order.sell(item: item, price: price):
        print("sell \(item) \(price)")
    }
}


/**
 * do {} で処理スコープを設けて確認しています。
 * スコープを設けることで変数などの生存区間を限定し、同じ変数名でコーディングできるようにしています。
 */
do {
    let type: Color = Color.red
    print("type: \(type)") // type: red
}

do {
    let type: Social = Social.instagram
    let typeNum: Int = Social.instagram.rawValue
    print("type: \(type), typeNum: \(typeNum)") // type: instagram, typeNum: 2
}

do {
    let type: Score = Score.great
    let typeNum: Int = Score.great.rawValue
    print("type: \(type), typeNum: \(typeNum)") // type: great, typeNum: 80
}

do {
    let buy: Order = Order.buy(item: "うまい棒", price: 10)
    let sell: Order = Order.sell(item: "本", price: 100)
    print("order: \(buy)")  // order: buy(item: "うまい棒", price: 10)
    print("order: \(sell)") // order: sell(item: "本", price: 100)
    orderFunc(buy)         // buy うまい棒 10
    orderFunc(sell)        // sell 本 100
}
