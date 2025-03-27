import SwiftUI

class FontManager {
    static func registerFonts() {
        guard let fontURL = Bundle.main.url(forResource: "SF-Compact-Text-Regular", withExtension: "otf") else {
            print("Could not find font file")
            return
        }
        
        guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
            print("Could not create font data provider")
            return
        }
        
        guard let font = CGFont(fontDataProvider) else {
            print("Could not create font")
            return
        }
        
        var error: Unmanaged<CFError>?
        
        guard CTFontManagerRegisterGraphicsFont(font, &error) else {
            print("Could not register font: \(error.debugDescription)")
            return
        }
    }
} 