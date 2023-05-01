//
//  LoginView.swift
//  ANO
//
//  Created by Abhishek Singh on 01/05/23.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel = AppModel.shared
    
    
    func userLogin() {
        print("getting the credentials")
        viewModel.isAuthenticated = true
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack {
                    Image("loginbg")
                        .resizable()
                        .frame(width: geo.size.width,height: geo.size.height*0.3)
                    VStack{
                        Text("ANO")
                            .font(.system(size: 46))
                            .foregroundColor(.init(uiColor: UIColor(hex: "#5017d4ff") ?? .blue))
                        Text("(made in India)")
                            .font(.system(size: 22))
                            .foregroundColor(.init(uiColor: UIColor(hex: "#5017d4ff") ?? .blue))
                    }.padding([.top],100)
                }.frame(width: geo.size.width,height: geo.size.height*0.3)
                VStack {
                    ScrollView {
                        VStack{
                            VStack(alignment: .leading){
                                Text("Login")
                                    .font(.system(size: 26))
                                    .foregroundColor(.init(uiColor: UIColor(hex: "#5017d4ff") ?? .blue))
                                    .padding([.leading],15)
                                    .padding([.bottom,.top],5)
                                Text("Welcome to ANO")
                                    .font(.system(size: 18))
                                    .foregroundColor(.init(uiColor: UIColor(hex: "#5017d4ff") ?? .blue))
                                    .padding([.leading],15)
                            }.frame(width: geo.size.width,alignment: .leading)
                            VStack {
                                VStack(alignment: .leading) {
                                    Text("Username")
                                        .padding([.leading],15)
                                        .foregroundColor(.init(uiColor: UIColor(hex: "#524f59ff") ?? .blue))
                                        .frame(width: geo.size.width,alignment: .leading)
                                    TextField("Username", text: $viewModel.username)
                                        .padding(10.0)
                                        .background(RoundedRectangle(cornerRadius: 4.0, style: .continuous)
                                            .stroke(Color(uiColor: UIColor(hex: "#5017d4ff") ?? .blue), lineWidth: 2.0))
                                        .padding([.leading],15)
                                        .frame(width: geo.size.width*0.90)
                                }.frame(width: geo.size.width,alignment: .leading)
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("Password")
                                        .padding([.leading],15)
                                        .foregroundColor(.init(uiColor: UIColor(hex: "#524f59ff") ?? .blue))
                                        .frame(width: geo.size.width,alignment: .leading)
                                    TextField("Password", text: $viewModel.username)
                                        .padding(10.0)
                                        .background(RoundedRectangle(cornerRadius: 4.0, style: .continuous)
                                            .stroke(Color(uiColor: UIColor(hex: "#5017d4ff") ?? .blue), lineWidth: 2.0))
                                        .padding([.leading],15)
                                        .frame(width: geo.size.width*0.90)
                                }.frame(width: geo.size.width,alignment: .leading)
                            }.frame(width: geo.size.width)
                                .padding()
                            Button(action: userLogin) {
                                Rectangle()
                                    .foregroundColor(Color(uiColor: UIColor(hex: "#5017d4ff") ?? .blue))
                                    .frame(width: geo.size.width*0.5,height: 60)
                                    .overlay{
                                        Text("Login")
                                            .foregroundColor(.white)
                                            .font(.system(size: 22))
                                    }
                                    .cornerRadius(50)
                                    .shadow(radius: 15)
                            }.padding()
                        }
                    }.padding(30)
                }.frame(width: geo.size.width,height: geo.size.height*0.8,alignment: .top)
                    .background(.white)
                    .cornerRadius(30)
            }.background(
                LinearGradient(gradient: Gradient(colors: [Color(uiColor: UIColor(hex: "#814dfaff") ?? .blue), Color(uiColor: UIColor(hex: "#4de0faff") ?? .blue)]), startPoint: .leading, endPoint: .trailing)
            )
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
