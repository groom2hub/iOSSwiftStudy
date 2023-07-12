// if

import Foundation
let ages = [13, 18, 34, 29]
var cost = 0
for age in ages {
    if age > 19 {
        cost += 20
    }
    else {
        cost += 15
    }
}
print("Total cost: \(cost) dollars")

// if-let
let ages1 = ["Kelly": 13, "Mac": 18, "John": 34, "Kim": 29]
var cost1 = 0
let names1 = ["Kelly", "Grace", "Kim"]
for name in names1 {
    let age1 = ages1[name]
    if age1 != nil {
        if age1! > 19 {
            cost1 += 20
        }
        else {
            cost1 += 20
        }
    }
}
print("Total cost: \(cost1) dollars")


//// early-return, guard 예시
//let queue = OperationQueue()
//queue.addOperation {
//    if let imageUrl = URL(String: urlString) {
//        if let imageData = try? Data(contentsOf: imageUrl) {
//            if let image = UIImage(data: imageData){
//                let mainQueue = OperationQueue.main
//                mainQueue.addOperation {
//                    if let cell = tableView.cellForRow(at: IndexPath) {
//                        cell.imageView?.image = image
//                    }
//                }
//            }
//        }
//    }
//}
//
//// early-return
//let queue = OperationQueue()
//queue.addOperation {
//    let imageUrl = URL(String: urlString)
//    if imageUrl == nil { return }
//    let imageData = try? Data(contentsOf: imageUrl)
//    if imageData == nil { return }
//    let image = UIImage(data: imageData)
//    if image == nil { return }
//    let mainQueue = OperationQueue.main
//    mainQueue.addOperation {
//        let cell = tableView.cellForRow(at: IndexPath)
//        cell.imageView?.image = image
//    }
//}
//
//// guard
//let queue = OperationQueue()
//queue.addOperation {
//    guard let imageUrl = URL(String: urlString) else { return }
//    guard let imageData = try? Data(contentsOf: imageUrl) else { return }
//    guard let image = UIImage(data: imageData) else { return }
//    guard let mainQueue = OperationQueue.main
//    mainQueue.addOperation {
//        guard let cell = tableView.cellForRow(at: IndexPath) else { return }
//        cell.imageView?.image = image
//    }
//}







