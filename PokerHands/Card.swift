import Foundation

enum Suit: String, CaseIterable {
    case hearts = "heart.fill"
    case diamonds = "diamond.fill"
    case clubs = "suit.club.fill"
    case spades = "suit.spade.fill"
    
    var color: String {
        switch self {
        case .hearts, .diamonds:
            return "red"
        case .clubs, .spades:
            return "black"
        }
    }
}

enum Rank: String, CaseIterable {
    case ace = "A"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case ten = "10"
    case jack = "J"
    case queen = "Q"
    case king = "K"
}

struct Card: Identifiable {
    let id = UUID()
    let suit: Suit
    let rank: Rank
} 