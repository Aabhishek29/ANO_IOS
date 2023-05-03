//
//  StoryView.swift
//  ANO
//
//  Created by Abhishek Singh on 02/05/23.
//

import SwiftUI

struct StoryView: View {
    @State var totalChatCount = 15
    @State var openChat: Bool = false
    @State var search: String = ""
    let colors: [Color] = [.red, .green, .blue,.red, .green, .blue,.red, .green, .blue]
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    HStack {
                        Text("Stories's (\(self.totalChatCount))")
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
                                NavigationLink( destination: ChatView(color: color),isActive: $openChat){
                                    EmptyView()
                                }
                                ZStack {
                                    Circle()
                                        .frame(width: 50,height: 50)
                                    Image(systemName: "video.fill")
                                        .resizable()
                                        .foregroundColor(.white)
                                        .frame(width: 25,height: 15)
                                }
                                VStack(alignment: .leading) {
                                    Text("Tony stark")
                                        .foregroundColor(.black.opacity(0.8))
                                        .bold()
                                        .padding(1)
                                    HStack {
                                        Text("Hello world...")
                                            .foregroundColor(.black.opacity(0.5))
                                            .bold()
                                            .font(.system(size: 14))
                                        Text("12:55")
                                    }
                                }.frame(width: geo.size.width*0.6,alignment: .leading)
                                
                            }.padding()
                                .frame(width: geo.size.width, alignment: .leading)
                                .onTapGesture {
                                    self.openChat = true
                                }
                        }
                    }
                }.background(Color(uiColor: UIColor(hex: "#dce7faff") ?? .blue))
            }
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
