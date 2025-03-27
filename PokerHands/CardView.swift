import SwiftUI

struct CardView: View {
    let card: Card
    
    var body: some View {
        VStack(spacing: 4) {
            Text(card.rank.rawValue)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(card.suit.color == "red" ? Color(hex: "F00000") : Color(hex: "000000"))
            
            Image(systemName: card.suit.rawValue)
                .font(.system(size: 24))
                .frame(width: 24, height: 24)
                .foregroundColor(card.suit.color == "red" ? Color(hex: "F00000") : Color(hex: "000000"))
        }
        .frame(width: 60, height: 80)
        .background(Color(hex: "efefef"))
        .cornerRadius(8)
        .shadow(radius: 2)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
        )
    }
}

struct EmptyCardView: View {
    enum Variant {
        case empty
        case suitOnly(Suit)
        case rankOnly(Rank)
    }
    
    let variant: Variant
    
    var body: some View {
        VStack(spacing: 4) {
            if case .rankOnly(let rank) = variant {
                Text(rank.rawValue)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color(hex: "666666"))
            } else if case .suitOnly = variant {
                Color.clear
                    .frame(height: 24)
            } else {
                Color.clear
                    .frame(height: 24)
            }
            
            if case .suitOnly(let suit) = variant {
                Image(systemName: suit.rawValue)
                    .font(.system(size: 24))
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color(hex: "666666"))
            } else if case .rankOnly = variant {
                Color.clear
                    .frame(height: 24)
            } else {
                Color.clear
                    .frame(height: 24)
            }
        }
        .frame(width: 60, height: 80)
        .background(Color.clear)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(hex: "666666"), lineWidth: 1)
        )
    }
}

#Preview {
    VStack(spacing: 20) {
        CardView(card: Card(suit: .hearts, rank: .ace))
        CardView(card: Card(suit: .spades, rank: .king))
        CardView(card: Card(suit: .diamonds, rank: .queen))
        CardView(card: Card(suit: .clubs, rank: .jack))
        
        Divider()
        
        EmptyCardView(variant: .empty)
        EmptyCardView(variant: .suitOnly(.hearts))
        EmptyCardView(variant: .rankOnly(.ace))
    }
    .padding()
    .background(Color(hex: "191919"))
} 