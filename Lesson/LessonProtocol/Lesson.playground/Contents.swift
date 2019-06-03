import UIKit

/* プロトコル */

/**
 * インターフェースの役割、変数や関数を規約や下位モジュールからの通知を受け取る場合に用いる。
 * 継承して使用する。プロトコルは多重継承できる。
 */

/** プロトコルを定義 */
protocol User {
    var name: String { get set }
    var score: Int { get set }
    func show()
}

/** Studentを継承して、TaroクラスにStudentプロトコルの変数と関数を規約する */
class Taro: User {
    var name: String
    var score: Int
    
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
    
    func show() {
        print("name: \(self.name), score: \(self.score)")
    }
}

let taro: Taro = Taro("Taro", 200)
taro.show()         // name: Taro, score: 200


/** protocolでデリゲート */
protocol HomeDelegate {
    func notify(_ message: String)
}

/**
 * viewModelからの通知を受け取る場合は、
 * HomeDelegateを継承してviewModelのdelegateにHomeControllerのオブジェクト（self）を設定する。
 *
 */
class HomeController: HomeDelegate {
    var viewModel: HomeViewModel
    
    init() {
        self.viewModel = HomeViewModel()
        self.viewModel.delegate = self
    }
    
    func run() {
        self.viewModel.run()
    }
    
    /** protocolの関数をオーバーライドする */
    func notify(_ message: String) {
        print(message)
    }
}

class HomeViewModel {
    var delegate: HomeDelegate?
    
    func run() {
        self.delegate?.notify("プロトコル経由で通知だよ")
    }
}

let controller: HomeController = HomeController()
controller.run()    // プロトコル経由で通知だよ

