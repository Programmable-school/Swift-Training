import UIKit

/* GCD */
/**
 * Grand Central Dispatch
 * マルチタスク実行するための手段
 * 非同期処理や複数の非同期処理の並列処理などを行える
 */

/**
 * メインディスパッチキュー
 * 直列処理タイプ
 * UI表示系タスクで利用する
 */
let mainQueue = DispatchQueue.main

/**
 * グローバルディスパッチキュー
 * 並列処理タイプ
 */
let grobalQueue = DispatchQueue.global(qos: .userInteractive)

/**
 * プライベートキューの作成
 * qos: 優先度を
 * attributes: 処理タイプ（直列か並列か）
 */
// 並列処理タイプ（優先度をUserInteractiveと同等に）
let queue1 = DispatchQueue(label: "queue1", qos: .userInteractive, attributes: .concurrent)

// 直列処理タイプ
let queue2 = DispatchQueue(label: "queue2")

/**
 * タスクの追加
 * queue1とqueue2の順で実行されるが、queue1でsleepを入れているため、タスクの同期処理、タスクの非同期処理の順に表示される。
 */
// 非同期処理
queue1.async {
    sleep(1)
    print("タスクの非同期処理")
}

// 同期処理
queue2.sync {
    print("タスクの同期処理")
}

/**
 * タスクの遅延追加
 * 指定した時間経過後にタスクが表示される
 */
queue1.asyncAfter(deadline: .now() + 2) {
    print("2秒後の実行")
}

/**
 * 複数のタスクを並列で実行する
 */
// タスク管理用のディスパッチ
let dispatchGroup = DispatchGroup()

// 並列タスク
let queue3 = DispatchQueue(label: "queue3", qos: .userInteractive, attributes: .concurrent)

// 3つの非同期処理を実行
for i in 1...3 {
    // 非同期処理の実行前にenterw、非同期処理完了時にleaveを呼ぶことで非同期処理を管理する
    dispatchGroup.enter()
    queue3.async(group: dispatchGroup, execute: DispatchWorkItem {
        print("並列処理_\(i)")
        dispatchGroup.leave()
    })
}

// 全ての非同期処理が完了するまで待つ
dispatchGroup.notify(queue: .main, work: DispatchWorkItem {
    print("完了")
})


/**
 * カウンタ管理（セマフォ）
 * 共有リソースの解放と利用を行い排他制御を行う。
 * signal()でカウンタを+1、wait()で-1になり、カウンタが0になると以降の処理が実行される
 */
// セマフォカウンタを0で初期化
let semaphoreQueue = DispatchSemaphore(value: 0)
let queue4 = DispatchQueue(label: "queue4", qos: .userInteractive, attributes: .concurrent)

queue4.asyncAfter(deadline: .now() + 3) {
    print("カウントアップ")
    semaphoreQueue.signal() // カウントアップ
}
semaphoreQueue.wait() // セマフォカウンタが1になるまで待つ
print("カウント処理終了")
