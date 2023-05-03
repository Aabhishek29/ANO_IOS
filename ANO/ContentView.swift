//
//  ContentView.swift
//  ANO
//
//  Created by Abhishek Singh on 01/05/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = AppModel.shared
    
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                ZStack{
                    NavigationLink( destination: HomeView(),isActive: $viewModel.isAuthenticated){
                            EmptyView()
                        }
                    NavigationLink( destination: SignUpView()
                        .navigationBarBackButtonHidden(true),isActive: $viewModel.navigateToSignUp){
                            EmptyView()
                        }
                    LoginView()
                        .frame(height: geo.size.height)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
