//
//  Onboarding.swift
//  ENumbers
//
//  Created by Melih Çalışkan on 27.07.2021.
//

import SwiftUI

struct ThirdPage: View {
    var body: some View {
        VStack{
            Text("Third View")
            
            Spacer()
            
            Button("Press Me") {
                print("Button pressed!")
            }
            .padding()
            .background(Color.primary)
        }
    }
}

struct Onboarding: View {
    @State private var currentTab = 0
    
    var body: some View {
        TabView(selection: $currentTab,
                content:  {
                    Text("First View")
                    Text("Second View")
                    ThirdPage()
                })
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
