//
//  MainView.swift
//  ENumbers
//
//  Created by Melih Çalışkan on 14.08.2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("List", systemImage: "list.dash")
                }
            
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
