//
//  ContentView.swift
//  Memorize
//
//  Created by Leandro Parice on 18/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("L").font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 12)
            }
        })
    }
}



#Preview {
    ContentView()
}
