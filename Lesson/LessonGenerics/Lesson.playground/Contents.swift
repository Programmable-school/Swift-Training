import UIKit

/* ジェネリクス */

/** 必要なprotocolとクラスを用意 */
protocol CompanyHuman {
    var name: String { get set }
    var profile: String { get set }
    var salary: Int { get set }
}

class Staff: CompanyHuman {
    var name: String
    var profile: String
    var salary: Int
    var isActive: Bool

    init(_ name: String, _ profile: String) {
        self.name = name
        self.profile = profile
        self.salary = 0
        self.isActive = true
    }
}

class Manager: CompanyHuman {
    var name: String
    var profile: String
    var salary: Int
    var companyName: String

    init(_ name: String, _ profile: String, _ companyName: String) {
        self.name = name
        self.profile = profile
        self.salary = 0
        self.companyName = companyName
    }
}

/**
 * ジェネリクス クラスに制約
 * CompanyHumanを継承するクラスを許容する
 */
class CompanyEmployee<T: CompanyHuman> {
    var human: T
    var name: String
    var profile: String
    init(human: T) {
        self.human = human
        self.name = human.name
        self.profile = human.profile
    }
}

class Company {
    /**
     * ジェネリクス 関数に制約
     * CompanyHumanを継承するクラスを許容する
     */
    func salaryPay<T: CompanyHuman>(employee: T) {
        // employeeがStaffの場合は20万を設定
        if (employee is Staff) {
            // employeeがStaffの場合は20万を設定
            print("This is Staff.")
            let staff = employee as! Staff
            staff.salary = 200_000
        }
        
        if (employee is Manager) {
            // employeeがManagerの場合は50万を設定
            let manager = employee as! Manager
            print("This is Manager. \(manager.companyName)")
            manager.salary = 500_000
        }
    }
}

/**
 * ジェネリクスクラスを使った例
 * CompanyHumanを継承したクラスしか利用できないよう制約する。
 */
let staff1 = CompanyEmployee<Staff>(human: Staff("大学生A", "スタッフです。"))
print("\(staff1.name) \(staff1.profile) \(staff1.human.isActive)")          // 大学生A スタッフです。 true

let manager1 = CompanyEmployee<Manager>(human: Manager("社員B", "社員です。", "XXX運営会社"))
print("\(manager1.name) \(manager1.profile) \(manager1.human.companyName)") // 社員B 社員です。 XXX運営会社

/**
 * ジェネリクス関数を使った例
 * CompanyHumanを継承したクラスしか利用できないよう制約する。
 */
let staff2 = Staff("大学生B", "スタッフです。")
let manager2 = Manager("社員B", "社員です。", "XXX運営会社")

// 給料を支払う
let company = Company()
company.salaryPay(employee: staff2)             // This is Staff.
company.salaryPay(employee: manager2)           // This is Manager. XXX運営会社
print("スタッフの給料 \(staff2.salary)")            // スタッフの給料 200000
print("マネージャーの給料 \(manager2.salary)")       // マネージャーの給料 500000
