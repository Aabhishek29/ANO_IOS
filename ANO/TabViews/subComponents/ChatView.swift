//
//  ChatView.swift
//  ANO
//
//  Created by Abhishek Singh on 01/05/23.
//

import SwiftUI

struct ChatView: View {
    var color: Color
    init(color: Color) {
        self.color = color
    }
    var body: some View {
        Text("Chat View")
            .background(color)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(color: .blue)
    }
}
