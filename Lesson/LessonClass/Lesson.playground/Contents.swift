import UIKit

/* クラス */

/**
 * データのまとまり。データやメソッドをを定義できる。
 */
class Human {
    /**
     * 変数（propety）
     */
    public var name: String         // 修飾子:public    外部公開
    var sex: SexType                // 修飾子:public    修飾子がない場合はpublicになる
    var partner: Human? = nil       // optional型で宣言. Optional型の場合はデータにnilチェックを行う
    private var height: Int = 0     // 修飾子:private   外部公開しないので自分しか読み書きできない
    private var weight: Int = 0     // 修飾子:private   外部公開しないので自分しか読み書きできない
    public private(set) var birthday: String!   // 読み取り専用（定数） private setを使用する
    var sexString: String {         // getter settter
        /** 値を取得するときに呼ばれる */
        get {
            return self.sex == SexType.man ? "男性" : "女性"
        }
        /** 値をセットするときに呼ばれる */
        set(value) {
            self.sex = value == "男性" ? SexType.man : SexType.woman
        }
    }
    
    /**
     * コンストラクタはクラスのインスタンス（実体）が生成されたタイミングで処理される
     */
    init(name: String, sex: SexType, birthday: String) {
        self.name = name
        self.sex = sex
        self.birthday = birthday
    }
    
    /**
     * 関数　修飾子を付けれる（public, privateなど） 修飾子がない場合はpublicになる.
     */
    func status(_ height: Int, _ weight: Int) {
        self.height = height
        self.weight = weight
    }
    
    func partner(_ human: Human) {
        if (self.sex != human.sex) {
            self.partner = human
            human.partner = self
            self.showHonne()
        }
    }
    
    public func showStatus() {
        print("name: \(name), height: \(height), weight: \(weight), birthday: \(birthday!)")
    }
    
    public func showPartner() {
        if let partner = self.partner {
            print("\(self.name)のパートナーは \(partner.name)")
        }
    }
    
    private func showHonne() {
        print("まぁいつ別れるか分からないけどね。これは独り言だから内緒だよ！")
    }
    
}

enum SexType {
    case man
    case woman
}


// クラスのインスタンスを生成するときは クラス名() の書き方をする
let man: Human = Human(name: "Taro", sex: SexType.man, birthday: "1990/1/1")
man.status(170, 80)
man.showStatus()            // name Taro height 170 weight 80 birthday 1990/1/1
// man.birthday = 20         // birthdayはのsetはprivateだけ許容しているためビルドエラーになる
print("\(man.sex) \(man.sexString)")        // man 男性
man.sexString = "女性"
print("\(man.sex) \(man.sexString)")        // woman 女性



let woman: Human = Human(name: "Hanako", sex: SexType.woman, birthday: "1992/1/1")
woman.status(150, 100)
woman.showStatus()          // name Hanako height 150 weight 100 birthday 1992/1/1

man.partner(woman)         // まぁいつ別れるか分からないけどね。これは独り言だから内緒だよ！
man.showPartner()           // Taroのパートナーは Hanako
woman.showPartner()         // Hanakoのパートナーは Taro
