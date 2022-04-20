//
//  ContentView.swift
//  Instfilter
//
//  Created by Evi St on 4/20/22.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount = 0.0
    
    
    var body: some View {
        VStack{
            Text("poopypants")
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)
                .onChange(of: blurAmount) { newValue in
                    print("New value: \(newValue)")
                }
            
            Button("Random blur"){
                blurAmount = Double.random(in: 0...20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
