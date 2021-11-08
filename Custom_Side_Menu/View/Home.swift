//
//  Home.swift
//  Custom_Side_Menu
//
//  Created by 佐藤航輔 on 2021/11/07.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        // Tab View With Tabs...
        TabView(selection: $selectedTab){
            
            // Views...
            HomePage()
                .tag("house")
            
            History()
                .tag("clock.arrow.circlepath")
            
            Settings()
                .tag("questionmark.circle")
            
            Help()
                .tag("gearshape.fill")
            
            Notifications()
                .tag("bell.badge")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HomePage: View {
    
    var body: some View{
        
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading,spacing: 20){
                
                    Image("img")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: getRect().width - 50, height: 400)
                        .cornerRadius(20)
                    
                    VStack(alignment: .leading, spacing: 5, content: {
                        
                        Text("Aaa Bbb")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("PUBG, YoutTuber ,Techie....")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                    })
                }
                
            }
            .navigationTitle("Home")
        }
    }
}

struct History: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct Notifications: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}

struct Settings: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct Help: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}
