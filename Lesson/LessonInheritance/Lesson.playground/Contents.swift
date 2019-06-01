import UIKit

/* 継承 */
/**
 *  共通のメンバ・メソッドがある場合は親クラス（スーパークラス）を作成し、
 *  親クラスを継承する子クラス（サブクラス）を用意することで子クラスは親クラスの持ち物を利用できる。
 *  修飾子によってアクセス制限できる
 *  public       別モジュールからアクセスできる
 *  private      同ファイル内でのみアクセスできる。
 *  open         別モジュールからアクセスできる。継承やオーバーライドが可能
 *  final        継承を禁止にする
 *  internal     同モジュール内からのみアクセスできる
 *  fileprivate  同ファイル内からのみアクセスできる。継承元のサブクラスはスーパークラスのfileprivateで宣言したものにアクセスできる。
 */

/**
 * スーパークラス
 * openをつけること（つけなくても良い）でoverride及びサブクラス化できる。
 */
open class CompanyEmployee {
    var companyName: String!        // 会社名
    var companyTel: String!         // 会社の電話番号
    var employeeId: Int!            // 社員ID
    var asset: Int!                 // 会社の資産
    private var hesokuri: Int!      // 会社のへそくり
    fileprivate var plan: String!   // 会社の今後の事業計画
    
    init() {
        self.companyName = "Develop Inc."
        self.companyTel = "0120000000"
        self.employeeId = -1
        self.asset = 100_000_000
        self.hesokuri = 1
        self.plan = "来年の3月に新サービスをローンチする"
    }
    
    func companyInfo() -> Dictionary<String, String> {
        return ["name": self.companyName, "tel": self.companyTel]
    }
    
    func hesokuri(_ id: Int) -> String {
        return id == 0 ? "会社のへそくりは \(self.hesokuri!)円" : "社長じゃないから分からない"
    }
}


/**
 * サブクラス
 * CompanyEmployeeを継承する。
 */
final class Employee: CompanyEmployee {
    var name: String!
    var profile: String!
    
    init(id: Int, name: String, profile: String) {
        super.init()            // 継承したCompanyEmployeeのコンストラクタを呼び初期化する
        super.employeeId = id   // CompanyEmployeeがて持っているemployeeIdにidを設定する
        self.name = name
        self.profile = profile
    }
    
    func myInfo() -> Dictionary<String, Any> {
        var info: [String: Any] = super.companyInfo()
        info["id"] = super.employeeId!
        info["name"] = self.name!
        info["profile"] = self.profile!
        return info
    }
    
    func hesokuri() -> String {
        return super.hesokuri(super.employeeId!)
    }
    
    func showPlan() {
        print(super.plan!)
    }
}

// Engineerの社員を生成
let employee1: Employee = Employee(id: 0, name: "Taro", profile: "President")
print(employee1.myInfo())   // ["name": "Taro", "tel": "0120000000", "id": 0, "profile": "President"]

// Marketingの社員を生成
let employee2: Employee = Employee(id: 1, name: "Hanako", profile: "Engineer")
print(employee2.myInfo())   // ["tel": "0120000000", "id": 1, "profile": "Engineer", "name": "Hanako"]

// 親クラスのprivateは親クラスのみアクセスできる
print("\(employee1.name!) \(employee1.hesokuri())")     // Taro 会社のへそくりは　1円
print("\(employee2.name!) \(employee2.hesokuri())")     // Hanako 社長じゃないから分からない
// print("\(employee1.hesokuri!)") // 呼ぶことはできない（ビルドエラー）

// 親クラスでfileprivateで宣言したものはEmployeeからアクセスできる
employee1.showPlan()                                // 来年の3月に新サービスをローンチする

