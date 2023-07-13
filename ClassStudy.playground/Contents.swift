// Class
class Animal {
    var legCount  = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDesc() -> String {
        "This \(name) has \(legCount) legs"
    }
}

let lark = Animal(name: "Lark")
lark.legCount = 2
lark.simpleDesc()

// Inheritance
class Mammal: Animal {
    override init(name: String) {
        super.init(name: name)
        legCount = 4
    }
    override func simpleDesc() -> String {
        "A mammal named \(name)"
    }
    func giveBirth() -> Mammal {
        print("Brought forth a baby")
        return baby()
    }
    func baby() -> Mammal {
        Mammal(name: "A baby \(name)")
    }
}

let el = Mammal(name: "Elephant")
el.legCount
el.simpleDesc()
let baby_el = el.giveBirth()
baby_el.simpleDesc()

// Computed Property
class Monster: Mammal {
    var kneeCount: Int {
        get {
            return legCount
        }
    }
    var toeCount: Int {
        get { legCount * 4 }
        set(count) { legCount = count / 4 }
    }
    var eyeCount = 0 {
        didSet {
            legCount = 2 * eyeCount
        }
    }
}

let m = Monster(name: "Goo")
(knee: m.kneeCount, toe: m.toeCount)
m.toeCount = 20
m.kneeCount

m.eyeCount = 123
m.legCount

