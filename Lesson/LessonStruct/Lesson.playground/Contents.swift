import UIKit

/* 構造体 */

/**
 * データのまとまり。変数や関数を定義できる。
 * 主なクラスとの違い
 *           クラス    構造体
 * 型        参照型      値型
 * 継承：      ○          x
 */
struct User {
    /** 変数を定義できる */
    var name: String
    init(_ name: String) {
        self.name = name
    }
    
    /** 関数を定義できる */
    func show() {
        print("My name is \(self.name)")
    }
}

let user1: User = User("Taro")
user1.show()        // My name is Taro

/** 構造体は値渡しのため、オブジェクトを渡すとコピーされる */
print(user1.name)           // Taro
var user2: User = user1
user2.name = "Hanako"
print("user1: \(user1.name), user2: \(user2.name)")    // user1: Taro, user2: Hanako

/** クラスは参照渡しのため、オブジェクトは参照されデータを変更すると参照元も変わってしまう */
class Student {
    var name: String
    init(_ name: String) {
        self.name = name
    }
}

let student1: Student = Student("Taro")
let student2: Student = student1
print("student1: \(student1.name)")    // student1: Taro

student2.name = "Hanako"
print("student1: \(student1.name), student2: \(student2.name)")   // student1: Hanako, student2: Hanako
