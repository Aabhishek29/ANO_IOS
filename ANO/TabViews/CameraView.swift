//
//  CameraView.swift
//  ANO
//
//  Created by Abhishek Singh on 03/05/23.
//

import SwiftUI
import UIKit
import Foundation

struct CameraView: View {
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    @ObservedObject var viewModel = AppModel.shared

    var body: some View {
        VStack {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }.toast(message: viewModel.toastMessage, isShowing: $showImagePicker, duration: Toast.short)
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}





class ImagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @Binding var isShown: Bool
    @Binding var image: Image?

    init(isShown: Binding<Bool>, image: Binding<Image?>) {
        _isShown = isShown
        _image = image
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        image = Image(uiImage: uiImage)
        isShown = false
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        isShown = false
    }
}

struct ImagePicker: UIViewControllerRepresentable {

    @Binding var isShown: Bool
    @Binding var image: Image?

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }

    func makeCoordinator() -> ImagePickerCoordinator {
        return ImagePickerCoordinator(isShown: $isShown, image: $image)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        let viewModel = AppModel.shared
        picker.delegate = context.coordinator
        if !UIImagePickerController.isSourceTypeAvailable(.camera){
            viewModel.toastMessage = "unable to open camera"
            picker.sourceType = .photoLibrary
        } else {
            viewModel.toastMessage = "opening camera"
            picker.sourceType = .camera
        }
        return picker
    }

}


struct PhotoCaptureView: View {

    @Binding var showImagePicker: Bool
    @Binding var image: Image?


    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

#if DEBUG
struct PhotoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCaptureView(showImagePicker: .constant(false), image: .constant(Image("")))
    }
}
#endif
