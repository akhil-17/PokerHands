//
//  ContentView.swift
//  PokerHands
//
//  Created by Akhil Dakinedi on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CardGridViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            HStack(spacing: 0) {
                Spacer()
                
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        LazyVGrid(columns: Array(repeating: GridItem(.fixed(60), spacing: 8), count: 5), alignment: .leading, spacing: 8) {
                            ForEach(0..<5) { index in
                                TextCardTop(text: viewModel.rowConditions[index])
                            }
                        }
                    }
                    .padding(.leading, 66)
                    
                    HStack(spacing: 0) {
                        LazyVGrid(columns: [GridItem(.fixed(60))], spacing: 8) {
                            ForEach(0..<5) { index in
                                TextCardLeft(text: viewModel.columnConditions[index])
                            }
                        }
                        .padding(.leading, 6)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.fixed(60), spacing: 8), count: 5), spacing: 8) {
                            ForEach(0..<5) { row in
                                ForEach(0..<5) { col in
                                    if let card = viewModel.cards[row][col] {
                                        CardView(card: card)
                                    } else {
                                        EmptyCardView(variant: viewModel.emptyCardVariants[row][col])
                                    }
                                }
                            }
                        }
                        .padding(.trailing, 8)
                    }
                }
                
                Spacer()
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "191919"))
        .ignoresSafeArea()
        .onAppear {
            viewModel.refreshGrid()
        }
    }
}

#Preview {
    ContentView()
}
