//
//  ContentView.swift
//  Memorize-2
//
//  Created by Tamay Eser Uysal on 1.08.2020.
//  Copyright © 2020 Tamay Eser Uysal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(content: {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        })
            .foregroundColor(Color.green)
            .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻").font(Font.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
