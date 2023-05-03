//
//  CameraView.swift
//  ANO
//
//  Created by Abhishek Singh on 03/05/23.
//

import SwiftUI
import UIKit

struct CameraView: View {
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
        @State private var selectedImage: UIImage?
        @State private var isImagePickerDisplay = false
        
        var body: some View {
            NavigationView {
                VStack {
                    
                    if selectedImage != nil {
                        Image(uiImage: selectedImage!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 300, height: 300)
                    } else {
                        Image(systemName: "snow")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 300, height: 300)
                    }
                    
                    Button("Camera") {
                        self.sourceType = .camera
                        self.isImagePickerDisplay.toggle()
                    }.padding()
                    
                    Button("photo") {
                        self.sourceType = .photoLibrary
                        self.isImagePickerDisplay.toggle()
                    }.padding()
                }
                .navigationBarTitle("Demo")
                .sheet(isPresented: self.$isImagePickerDisplay) {
                    ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
                }
                
            }.navigationViewStyle(StackNavigationViewStyle())
        }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}



struct ImagePickerView: UIViewControllerRepresentable {
    func makeCoordinator() -> Coordinator {
        return Coordinator(picker: self)
    }


    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) var isPresented
    var sourceType: UIImagePickerController.SourceType

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = self.sourceType
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }


    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var picker: ImagePickerView

        init(picker: ImagePickerView) {
            self.picker = picker
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let selectedImage = info[.originalImage] as? UIImage else { return }
            self.picker.selectedImage = selectedImage
            self.picker.isPresented.wrappedValue.dismiss()
        }

    }
}
