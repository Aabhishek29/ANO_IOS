//
//  CallView.swift
//  ANO
//
//  Created by Abhishek Singh on 02/05/23.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Text("Setting")
                        .bold()
                        .font(.system(size: 26))
                        .foregroundColor(.white)
                        .padding()
                }.frame(width: geo.size.width,alignment: .leading)
                .padding()
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(uiColor: UIColor(hex: "#814dfaff") ?? .blue), Color(uiColor: UIColor(hex: "#4de0faff") ?? .blue)]), startPoint: .leading, endPoint: .trailing)
                )
                ZStack {
                    Circle()
                        .frame(width: 150,height: 150)
                    Image(systemName: "person.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                }
                VStack {
                    HStack {
                        Text("Name")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.30,alignment: .leading)
                            .padding()
                        Text("Tony Stark")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.40,alignment: .trailing)
                            .padding()
                    }
                    HStack {
                        Text("Age")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.30,alignment: .leading)
                            .padding()
                        Text("19")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.40,alignment: .trailing)
                            .padding()
                    }
                    HStack {
                        Text("Email")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.30,alignment: .leading)
                            .padding()
                        Text("xy@mail.in")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.40,alignment: .trailing)
                            .padding()
                    }
                    HStack {
                        Text("Privacy")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.30,alignment: .leading)
                            .padding()
                        Text("end-to-end")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.40,alignment: .trailing)
                            .padding()
                    }
                    HStack {
                        Text("agreement")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.30,alignment: .leading)
                            .padding()
                        Text("teams applied")
                            .font(.system(size: 26))
                            .bold()
                            .frame(width: geo.size.width*0.40,alignment: .trailing)
                            .padding()
                    }
                }.frame(width: geo.size.width*0.90)
                    .background(Color(uiColor: UIColor(hex: "#ebf7ffff") ?? .blue))
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
            }.frame(width: geo.size.width, height: geo.size.height,alignment: .top)
            .background(Color(uiColor: UIColor(hex: "#dce7faff") ?? .blue))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
