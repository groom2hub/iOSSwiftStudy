// for-in
let ages1 = ["Kelly": 13, "Mac": 18, "John": 34, "Kim": 29]
for (name, age) in ages1 {
    let msg = "\(name) is \(age)"
    print(msg)
}

var sum = 0
for num in 1 ... 100 {
    sum += num
}

// Switch
let integers = [9, 10, 11]
for integerToDescribe in integers {
    var description = "The number \(integerToDescribe) is"
    switch integerToDescribe {
    case 2, 3, 5, 7, 11, 13, 17, 19:
        description += " a prime number, and also"
        fallthrough
    default:
        description += " an integer."
    }
    print(description)
}

let counts = [3, 832, 8437, 39, 0, 8, 3335422]
for count in counts {
    var prefix: String
    switch count {
    case 0:
        prefix = "no"
    case 1...3:
        prefix = "a few"
    case 4...9:
        prefix = "servaral"
    case 100..<1000:
        prefix = "tens of"
    case 100..<1_000_000:
        prefix = "thousands of"
    default:
        prefix = "so many"
    }
    print("\(prefix) stars")
}
