//
//  SignUpView.swift
//  ANO
//
//  Created by Abhishek Singh on 02/05/23.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModel = AppModel.shared
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    
    func signUpUser() {
        print("Lets signUp User")
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack {
                    Image("loginbg")
                        .resizable()
                        .frame(width: geo.size.width,height: geo.size.height*0.2)
                    VStack{
                        Text("ANO")
                            .font(.system(size: 46))
                            .foregroundColor(.init(uiColor: UIColor(hex: "#5017d4ff") ?? .blue))
                        Text("(made in India)")
                            .font(.system(size: 22))
                            .foregroundColor(.init(uiColor: UIColor(hex: "#5017d4ff") ?? .blue))
                    }.padding([.top],80)
                }.frame(width: geo.size.width,height: geo.size.height*0.2)
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
                                    TextField("Username", text: $username)
                                        .padding(10.0)
                                        .background(RoundedRectangle(cornerRadius: 4.0, style: .continuous)
                                            .stroke(Color(uiColor: UIColor(hex: "#5017d4ff") ?? .blue), lineWidth: 2.0))
                                        .padding([.leading],15)
                                        .frame(width: geo.size.width*0.90)
                                }.frame(width: geo.size.width,alignment: .leading)
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("Email")
                                        .padding([.leading],15)
                                        .foregroundColor(.init(uiColor: UIColor(hex: "#524f59ff") ?? .blue))
                                        .frame(width: geo.size.width,alignment: .leading)
                                    TextField("email", text: $email)
                                        .padding(10.0)
                                        .background(RoundedRectangle(cornerRadius: 4.0, style: .continuous)
                                            .stroke(Color(uiColor: UIColor(hex: "#5017d4ff") ?? .blue), lineWidth: 2.0))
                                        .padding([.leading],15)
                                        .frame(width: geo.size.width*0.90)
                                }.frame(width: geo.size.width,alignment: .leading)
                                VStack(alignment: .leading) {
                                    Text("Password")
                                        .padding([.leading],15)
                                        .foregroundColor(.init(uiColor: UIColor(hex: "#524f59ff") ?? .blue))
                                        .frame(width: geo.size.width,alignment: .leading)
                                    TextField("Password", text: $password)
                                        .padding(10.0)
                                        .background(RoundedRectangle(cornerRadius: 4.0, style: .continuous)
                                            .stroke(Color(uiColor: UIColor(hex: "#5017d4ff") ?? .blue), lineWidth: 2.0))
                                        .padding([.leading],15)
                                        .frame(width: geo.size.width*0.90)
                                }.frame(width: geo.size.width,alignment: .leading)
                                    .padding()
                            }.frame(width: geo.size.width)
                                .padding()
                            Button(action: signUpUser) {
                                Rectangle()
                                    .foregroundColor(Color(uiColor: UIColor(hex: "#5017d4ff") ?? .blue))
                                    .frame(width: geo.size.width*0.5,height: 60)
                                    .overlay{
                                        Text("Sign Up")
                                            .foregroundColor(.white)
                                            .font(.system(size: 22))
                                    }
                                    .cornerRadius(50)
                                    .shadow(radius: 15)
                            }.padding()
                            
                            Text("Already have an account?")
                                .foregroundColor(.blue)
                                .onTapGesture {
                                    viewModel.navigateToSignUp = false
                                }
                            
                        }
                    }.padding(30)
                }.frame(width: geo.size.width,height: geo.size.height*0.9,alignment: .top)
                    .background(.white)
                    .cornerRadius(30)
            }.background(
                LinearGradient(gradient: Gradient(colors: [Color(uiColor: UIColor(hex: "#814dfaff") ?? .blue), Color(uiColor: UIColor(hex: "#4de0faff") ?? .blue)]), startPoint: .leading, endPoint: .trailing)
            )
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
