import SwiftUI

struct TextCardLeft: View {
    let text: String
    
    init(text: String) {
        self.text = text
        FontManager.registerFonts()
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 13, weight: .medium, design: .default))
            .foregroundColor(Color(hex: "d4d4d4"))
            .multilineTextAlignment(.trailing)
            .lineLimit(4)
            .padding(.trailing, 8)
            .frame(width: 60, height: 80, alignment: .trailing)
            //.background(Color.white)
            //.cornerRadius(8)
            //.shadow(radius: 2)
            //.overlay(
            //    RoundedRectangle(cornerRadius: 8)
            //        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            //)
    }
}

struct TextCardTop: View {
    let text: String
    
    init(text: String) {
        self.text = text
        FontManager.registerFonts()
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 13, weight: .medium, design: .default))
            .foregroundColor(Color(hex: "d4d4d4"))
            .multilineTextAlignment(.center)
            .lineLimit(4)
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 4)
            .padding(.bottom, 8)
            .frame(width: 60, height: 80, alignment: .bottomLeading)
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
        TextCardLeft(text: "Royal Flush")
        TextCardLeft(text: "Straight Flush")
        TextCardLeft(text: "Four of a Kind")
        TextCardLeft(text: "Full House")
        TextCardLeft(text: "Flush")
        
        Divider()
        
        TextCardTop(text: "Royal Flush")
        TextCardTop(text: "Straight Flush")
        TextCardTop(text: "Four of a Kind")
        TextCardTop(text: "Full House")
        TextCardTop(text: "Flush")
    }
    .padding()
    .background(Color(hex: "191919"))
} 