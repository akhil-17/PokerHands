import Foundation

class CardGridViewModel: ObservableObject {
    @Published var cards: [[Card?]] = Array(repeating: Array(repeating: nil, count: 5), count: 5)
    @Published var emptyCardVariants: [[EmptyCardView.Variant]] = Array(repeating: Array(repeating: .empty, count: 5), count: 5)
    
    let columnConditions = [
        "Royal Flush",
        "Straight Flush",
        "Four of a Kind",
        "Full House",
        "Flush"
    ]
    
    let rowConditions = [
        "Royal Flush",
        "Straight Flush",
        "Four of a Kind",
        "Full House",
        "Flush"
    ]
    
    func generateRandomCard() -> Card {
        let randomSuit = Suit.allCases.randomElement()!
        let randomRank = Rank.allCases.randomElement()!
        return Card(suit: randomSuit, rank: randomRank)
    }
    
    func generateRandomEmptyVariant() -> EmptyCardView.Variant {
        let random = Int.random(in: 0...3)
        switch random {
        case 0:
            return .empty
        case 1:
            return .suitOnly(Suit.allCases.randomElement()!)
        case 2:
            return .rankOnly(Rank.allCases.randomElement()!)
        default:
            return .empty
        }
    }
    
    func refreshGrid() {
        for row in 0..<5 {
            for col in 0..<5 {
                if Bool.random() {
                    cards[row][col] = generateRandomCard()
                    emptyCardVariants[row][col] = .empty
                } else {
                    cards[row][col] = nil
                    emptyCardVariants[row][col] = generateRandomEmptyVariant()
                }
            }
        }
    }
} 