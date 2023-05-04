//
//  AppModel.swift
//  ANO
//
//  Created by Abhishek Singh on 01/05/23.
//

import Foundation


class AppModel : ObservableObject {
    
    static let shared = AppModel()
    
    @Published var username: String = ""
    @Published var isAuthenticated: Bool = false
    @Published var navigateToSignUp: Bool = false
    @Published var toastMessage: String = ""
}
