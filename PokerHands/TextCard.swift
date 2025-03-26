import SwiftUI

struct TextCardRight: View {
    let text: String
    
    init(text: String) {
        self.text = text
        FontManager.registerFonts()
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 14, weight: .semibold, design: .default))
            .foregroundColor(Color(hex: "d4d4d4"))
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.5)
            .lineLimit(4)
            .padding(.leading, 8)
            .padding(.trailing, 4)
            .frame(width: 60, height: 80, alignment: .leading)
            //.background(Color.white)
            //.cornerRadius(8)
            //.shadow(radius: 2)
            //.overlay(
            //    RoundedRectangle(cornerRadius: 8)
            //        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            //)
    }
}

struct TextCardBottom: View {
    let text: String
    
    init(text: String) {
        self.text = text
        FontManager.registerFonts()
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 14, weight: .semibold, design: .default))
            .foregroundColor(Color(hex: "d4d4d4"))
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.5)
            .lineLimit(4)
            .padding(.horizontal, 4)
            .padding(.top, 8)
            .frame(width: 60, height: 80, alignment: .topLeading)
            //.background(Color.white)
            //.cornerRadius(8)
            //.shadow(radius: 2)
            //.overlay(
            //    RoundedRectangle(cornerRadius: 8)
            //        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            //)
    }
}

#Preview {
    VStack(spacing: 20) {
        TextCardRight(text: "Royal Flush")
        TextCardRight(text: "Straight Flush")
        TextCardRight(text: "Four of a Kind")
        TextCardRight(text: "Full House")
        TextCardRight(text: "Flush")
        
        Divider()
        
        TextCardBottom(text: "Royal Flush")
        TextCardBottom(text: "Straight Flush")
        TextCardBottom(text: "Four of a Kind")
        TextCardBottom(text: "Full House")
        TextCardBottom(text: "Flush")
    }
    .padding()
    .background(Color(hex: "191919"))
} 