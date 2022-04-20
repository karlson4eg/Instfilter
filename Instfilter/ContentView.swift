//
//  ContentView.swift
//  Instfilter
//
//  Created by Evi St on 4/20/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    
    var body: some View {
        Text("Hello, world!")
            .frame(width:300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                showingConfirmation = true
            }
            .confirmationDialog("Change background", isPresented: $showingConfirmation) {
                Button("Red") { backgroundColor = .red }
                Button("Green") { backgroundColor = .green }
                Button("Pink") { backgroundColor = .pink }
                Button("Go away", role: .cancel) { }
            } message: {
                Text("Select a new color")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
