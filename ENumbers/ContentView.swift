//
//  ContentView.swift
//  ENumbers
//
//  Created by Melih Çalışkan on 26.07.2021.
//

import SwiftUI

struct LanguagePicker: View {
    var language = ["English", "Turkish"]
    @State private var selectedLanguage = "English"
    
    var body: some View {
        VStack {
            Picker("select_language", selection: $selectedLanguage) {
                ForEach(language, id: \.self) {
                    Text($0)
                }
            }
            Text("You selected: \(selectedLanguage)")
        }
    }
}

struct ContentView: View {
    @State private var rememberMe = false
    
    var body: some View {
        VStack {
            Text("e_numbers")
            LanguagePicker();
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
