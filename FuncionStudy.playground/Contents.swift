// def = func
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}

let grt1 = greet(name: "Dave", day: "Monday")
let grt2 = greet(name: "Kelly", day: "Sunday")

func average(numbers: Int ...) -> Double {
    var sum = 0
    for num in numbers {
        sum += num
    }
    return Double(sum) / Double(numbers.count)
}

let avg1 = average(numbers: 10, 20, 33)
let avg2 = average(numbers: 1, 2, 3, 4, 5, 6, 10)

// return 값이 여러개
func sum_average(numbers: Int...) -> (sum: Int, avg: Double) {
    var sum = 0
    for num in numbers {
        sum += num
    }
    let avg = Double(sum) / Double(numbers.count)
    return (sum: sum, avg: avg)
}
let sa1 = sum_average(numbers: 10, 20, 33)
let sa2 = sum_average(numbers: 1, 2, 3, 4, 5, 6, 10)

// return number * 10 + bonus(odd/negative)
func points(number: Int, bonus: (Int)->Bool) -> Int {
    var pt = number * 10
    if bonus(number) {
        pt += 1
    }
    return pt
}
func odd(num: Int) -> Bool {
    return num % 2 != 0
}
func negative(num: Int) -> Bool {
    return num  < 0
}

let pt1 = points(number: 5, bonus: odd)
let pt2 = points(number: 6, bonus: odd)
let pt3 = points(number: 7, bonus: negative)
let pt4 = points(number: -1, bonus: negative)

// incrementor(number:) 호출마다 하나씩 생성되어 유지되는 값
func incrementor(number: Int) -> (()->Int) {
    var value = 0
    func increase() -> Int {
        value += number
        return value
    }
    return increase
}

let inc3 = incrementor(number: 3)
inc3()
inc3()

let inc7 = incrementor(number: 7)
inc7()
inc7()

inc3()


// Closure: 코드 덩어리를 객체로 취급
func points1(number: Int, bonus: (Int)->Bool) -> Int {
    var pt = number * 10
    if bonus(number) {
        pt += 1
    }
    return pt
}
let pt11 = points1(number: 5, bonus: {
    (number: Int) -> Bool in
    return number % 2 != 0
})
let negative1 = { (num: Int) -> Bool in
    return num  < 0
}
let pt12 = points1(number: -1, bonus: negative1)

let positive1 = { $0 > 0 }
let pt13 = points1(number: 9, bonus: positive1)

let mod3 = points1(number: 9, bonus: { $0 % 3 == 0})
mod3
let mod7 = points1(number: 9) { $0 % 7 == 0}
mod7

// Sort
var numbers_arr = [1, 12, 32, 2, 4, 43, 3]
numbers_arr.sort(by: {(n1: Int, n2: Int) -> Bool in
    return n1 < n2
})
numbers_arr

numbers_arr.sort(by: {n1, n2 in n1 > n2})
numbers_arr

numbers_arr.sort {$0 < $1}
numbers_arr

numbers_arr.sort(by: >)

numbers_arr.sort()
