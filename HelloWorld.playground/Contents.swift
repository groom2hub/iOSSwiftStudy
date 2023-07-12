print("Hello, playground")

// var : mutable
var name:String = "GyonG"
// name = 12 < name은 String 타입이므로 오류 발생
var age = 23

// let : immutable
let bornIn = 2000

age += 1
// bornIn += 1 < bornIn = let으로 선언한 변수이므로 오류 발생

var seconds = 3.3
seconds = 4 // Double형 변수에 Int값 대입 가능
var value = 10
//value = 4.2 < Int형 변수에 Double값 대입 불가

let pi = 3.14
let msg = "Value of PI is \(pi)"
print(msg)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// Array
var names = ["kim", "Lee", "Park"]
let kim = names[0]
let names_count = names.count
names.append("Choi")

let nums = [1, 2, 3]
type(of: nums)

var a = nums
a[1] = 20
a

// 여러개의 타입의 배열
let what:[CustomStringConvertible] = ["Hi", 5]

// Dictionary
var ages = ["Kim": 20, "Lee": 21, "Park": 23]
ages["Kim"]





