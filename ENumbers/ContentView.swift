//
//  ContentView.swift
//  ENumbers
//
//  Created by Melih Çalışkan on 26.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing:20) {
                    
                    SearchBar(text: $searchText).padding()
                    
                    CardView(category: "E632", title:"Dipotassium inosinate")
                    CardView(category: "E633", title: "Calcium inosinate")
                    
                    NavigationLink(
                        destination: Settings()) {
                        Text("Go to settings")
                    }
                }
                .navigationBarTitle("e_numbers")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
