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
                    TabView(selection: .constant(2)) {
                        CameraView()
                            .tabItem {
                                Label("Camera", systemImage: "camera")
                            }
                            .tag(1)
                        ChatListView()
                            .tabItem {
                                Label("Chats", systemImage: "ellipsis.message.fill")
                            }
                            .tag(2)
                        StoryView()
                            .tabItem {
                                Label("Story", systemImage: "person.3.fill")
                            }
                            .tag(3)
                        SettingView()
                            .tabItem {
                                Label("Setting", systemImage: "gearshape.fill")
                            }
                            .tag(4)
                    }
                }.frame(width: geo.size.width,height: geo.size.height)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(uiColor: UIColor(hex: "#814dfaff") ?? .blue), Color(uiColor: UIColor(hex: "#4de0faff") ?? .blue)]), startPoint: .leading, endPoint: .trailing)
                    )
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
