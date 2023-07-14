// Enumeration
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
}

let c_a = Rank.ace
let c_2 = Rank.two
let str_a = "Card a = \(c_a)"
let str_2 = "Card 2 = \(c_2)"

let str_a1 = "Card a = \(c_a), \(c_a.rawValue)"
let str_21 = "Card 2 = \(c_2), \(c_2.rawValue)"

enum Rank1: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
}
