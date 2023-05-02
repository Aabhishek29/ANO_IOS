//
//  ChatListView.swift
//  ANO
//
//  Created by Abhishek Singh on 01/05/23.
//

import SwiftUI

struct ChatListView: View {
    @State var totalChatCount = 24
    @State var search: String = ""
    let colors: [Color] = [.red, .green, .blue,.red, .green, .blue,.red, .green, .blue]
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Text("Message's (\(self.totalChatCount))")
                        .bold()
                        .font(.system(size: 26))
                        .foregroundColor(.white)
                }.frame(width: geo.size.width,alignment: .leading)
                    .padding()
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(uiColor: UIColor(hex: "#814dfaff") ?? .blue), Color(uiColor: UIColor(hex: "#4de0faff") ?? .blue)]), startPoint: .leading, endPoint: .trailing)
                    )
                ScrollView {
                    ForEach(colors, id: \.self) { color in
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 50,height: 50)
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 25,height: 25)
                            }
                        }.padding()
                            .frame(width: geo.size.width, alignment: .leading)
                    }
                }
            }
        }
    }
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}
