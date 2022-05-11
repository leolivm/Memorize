//
//  ContentView.swift
//  Memorize
//
//  Created by Leandro Martins on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ForEach(_, content: {
            ZStack(content: {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻 oiiii")
            })
        })
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
