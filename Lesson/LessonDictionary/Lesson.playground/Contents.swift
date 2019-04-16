import UIKit

/* 辞書型  */
let dic1: [String: Int] = ["key1": 1, "key2": 2]
print(dic1)                 // ["key1": 1, "key2": 2]
if let d = dic1["key1"] {
    print(d)                // 1
}
if let d = dic1["key2"] {
    print(d)                // 2
}


var dic2: [String: Any] = [:]
dic2["key1"] = "value"
dic2["key2"] = 1000
print(dic2)                 // ["key2": 1000, "key1": "value"]
if let d = dic2["key1"], let v = d as? String {
    print(v)                // value
}
if let d = dic2["key2"], let v = d as? Int {
    print(v)                // 1000
}

dic2["key2"] = nil
print(dic2)                 // ["key1": "value"]
