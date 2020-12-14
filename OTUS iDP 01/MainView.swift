//
//  ContentView.swift
//  OTUS iDP 01
//
//  Created by Igor Andryushenko on 13.12.2020.
//

import SwiftUI

struct MainScreen: View {
    
    @State private var tabSelection = 0
    @State private var selectStr: String? = ""
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
            
            NewScreen(innerSelection: $tabSelection, selectStr: $selectStr).tabItem {
                Image(systemName: "dpad.left.fill")
                Text("New")
            }.tag(0)
            TopScreen(selectStr: $selectStr).tabItem {
                Image(systemName: "dpad.up.fill")
                Text("Top")
            }.tag(1)
            FavoritesScreen().tabItem {
                Image(systemName: "dpad.right.fill")
                Text("Favorites")
            }.tag(2)
            
        }
        
    }
}

struct ContentScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
