//
//  HomeView.swift
//  ANO
//
//  Created by Abhishek Singh on 02/05/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                VStack{
                    TabView {
                        StoryView()
                            .tabItem {
                                Label("Camera", systemImage: "camera")
                            }
                        ChatListView()
                            .tabItem {
                                Label("Chats", systemImage: "ellipsis.message.fill")
                            }
                        StoryView()
                            .tabItem {
                                Label("Story", systemImage: "person.3.fill")
                            }
                        LoginView()
                            .tabItem {
                                Label("Call", systemImage: "phone.fill")
                            }
                    }
                }.frame(width: geo.size.width,height: geo.size.height)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(uiColor: UIColor(hex: "#814dfaff") ?? .blue), Color(uiColor: UIColor(hex: "#4de0faff") ?? .blue)]), startPoint: .leading, endPoint: .trailing)
                )
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
