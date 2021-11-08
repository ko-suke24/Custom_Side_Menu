//
//  TabButton.swift
//  Custom_Side_Menu
//
//  Created by 佐藤航輔 on 2021/11/07.
//

import SwiftUI

struct TabButton: View {
    
    var image: String
    var title: String
    
    @Binding var selectedTab: String
    var animation: Namespace.ID
    
    var body: some View {
        
        Button {
            withAnimation(.spring()) {
                self.selectedTab = image
            }
        } label: {
            HStack(spacing: 15) {
                Image(systemName: image)
                    .frame(width: 30)
                    .font(.title2)
                
                Text(title)
                    .fontWeight(.semibold)
                
            }
            .foregroundColor(selectedTab == image ? Color("blue") : Color.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 10)
            .frame(maxWidth: getRect().width - 170, alignment: .leading)
            .background(
                
                ZStack {
                    if selectedTab == image {
                        Color.white
                            .opacity(selectedTab == image ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 12))
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
            )
        }
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
