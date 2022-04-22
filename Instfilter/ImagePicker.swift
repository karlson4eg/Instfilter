//
//  ImagePicker.swift
//  Instfilter
//
//  Created by Evi St on 4/22/22.
//

import PhotosUI
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .images
        
        let picker = PHPickerViewController(configuration: config)
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
        
    }
    
    //typealias UIViewControllerType = PHPickerViewController  -- autogenerates make and update
    
}
