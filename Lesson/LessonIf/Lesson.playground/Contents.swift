import UIKit

/** if文（条件分岐） */

var value: Int = 1
if (value == 1) {
    print("valueは1です。")      // ここを通る
} else {
    print("valueは1以外です。")   // ここは通らない
}

value = 2
if (value == 1) {
    print("valueは1です。")      // ここは通らない
} else {
    print("valueは1以外です。")   // ここを通る
}

if (value == 1) {
    print("valueは1です。")     // ここは通らない
} else if (value == 2) {
    print("valueは2です。")     // ここを通る/Users/hukusuke/Desktop/Start/Development/mokumoku/swift/Swift-Training/Lesson/LessonCompare/Lesson.playground/Contents.swift
} else {
    print("valueは1以外です。")   // ここは通らない
}



