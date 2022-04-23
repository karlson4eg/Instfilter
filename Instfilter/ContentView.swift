//
//  ContentView.swift
//  Instfilter
//
//  Created by Evi St on 4/20/22.
//
import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var inputImage: UIImage?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack{
            image?
                .resizable()
                .scaledToFit()
            
            Button("select image") {
                showingImagePicker = true
            }
        }.sheet(isPresented: $showingImagePicker){
            ImagePicker(image: $inputImage)
        }.onChange(of: inputImage) { _ in loadImage() }
    }
    
    func loadImage() {
        guard let inputimage = inputImage else { return }
        image = Image(uiImage: inputimage)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
