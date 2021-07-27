//
//  Settings.swift
//  ENumbers
//
//  Created by Melih Çalışkan on 27.07.2021.
//

import SwiftUI

struct LanguagePicker: View {
    var languages = ["English", "Turkish"]
    @State private var selectedLanguage = "English"
    
    var body: some View {
        VStack {
            Picker("select_language", selection: $selectedLanguage) {
                ForEach(languages, id: \.self) {
                    Text($0)
                }
            }
            Text("You selected: \(selectedLanguage)")
        }
    }
}

struct Settings: View {
    var body: some View {
        NavigationView {
            LanguagePicker()
                .navigationBarTitle("settings")
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
