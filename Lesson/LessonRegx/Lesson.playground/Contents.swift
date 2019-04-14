import UIKit

/* 正規表現 */
let urlString1 = "hpp:///aiuto.com"
let urlString2 = "https://twitter.com/"
let urlString3 = "https://twitter.com/"
let urlRegx = "^(http|https)://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?$"
let urlTest = NSPredicate(format:"SELF MATCHES %@", urlRegx)
print(urlTest.evaluate(with: urlString1))   // false
print(urlTest.evaluate(with: urlString2))   // true
print(urlTest.evaluate(with: urlString3))   // true

// URL
do {
    let urlString1 = "hpp:///aiuto.com"
    let urlString2 = "https://www.google.com/"
    let urlRegx = "^(http|https)://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?$"
    let urlTest = NSPredicate(format:"SELF MATCHES %@", urlRegx)
    print(urlTest.evaluate(with: urlString1))   // false
    print(urlTest.evaluate(with: urlString2))   // true
}

// Twitter URL
do {
    let urlString1 = "https://www.google.com/"
    let urlString2 = "https://twitter.com/hobbydevelop"
    let urlRegx = "^(http|https)://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?$"
    let socialRegx = "^(?=.*twitter.com).*$"
    let urlTest = NSPredicate(format:"SELF MATCHES %@", urlRegx)
    let socialTest = NSPredicate(format:"SELF MATCHES %@", socialRegx)
    print(urlTest.evaluate(with: urlString1) && socialTest.evaluate(with: urlString1))  // false
    print(urlTest.evaluate(with: urlString2) && socialTest.evaluate(with: urlString2))  // true
}

// Facebook URL
do {
    let urlString1 = "https://www.google.com/"
    let urlString2 = "https://www.facebook.com/hobbydevelop"
    let urlRegx = "^(http|https)://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?$"
    let socialRegx = "^(?=.*facebook.com).*$"
    let urlTest = NSPredicate(format:"SELF MATCHES %@", urlRegx)
    let socialTest = NSPredicate(format:"SELF MATCHES %@", socialRegx)
    print(urlTest.evaluate(with: urlString1) && socialTest.evaluate(with: urlString1))  // false
    print(urlTest.evaluate(with: urlString2) && socialTest.evaluate(with: urlString2))  // true
}
