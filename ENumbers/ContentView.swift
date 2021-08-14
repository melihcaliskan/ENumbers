//
//  ContentView.swift
//  ENumbers
//
//  Created by Melih Çalışkan on 26.07.2021.
//

import SwiftUI

struct CardData: Identifiable {
    let id = UUID()
    let title: String
    let category: String
}

struct ContentView: View {
    @State private var searchText = ""
    
    let list = [
        CardData(title: "Dipotassium inosinate", category: "E632"),
        CardData(title: "Calcium inosinate", category: "E633")
    ]
    
    var body: some View {
        NavigationView {
            VStack() {
                ScrollView() {
                    SearchBar(text: $searchText).padding()
                    
                    ForEach(list, id: \.id) { e in
                        ZStack {
                            CardView(title: e.title, category: e.category)
                            NavigationLink(
                                destination: DetailView()) {
                                EmptyView()
                            }
                        }
                    }.listRowInsets(EdgeInsets())
                    
                }
                .navigationBarHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
