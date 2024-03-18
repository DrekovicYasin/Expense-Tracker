//
//  ContentView.swift
//  Expense Tracker
//
//  Created by Yasin Gülsuyu on 16.03.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    /// Intro Visibilty Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    /// Active Tab
    @State private var activeTab: Tab = .recents
    var body: some View{
        TabView(selection: $activeTab) {
            Recents()
                .tag(Tab.recents)
                .tabItem{Tab.recents.tabContent}
            
            Search()
                .tag(Tab.search)
                .tabItem{Tab.search.tabContent}
            
            Graphs()
                .tag(Tab.charts)
                .tabItem{Tab.charts.tabContent}
            
            Settings()
                .tag(Tab.settings)
                .tabItem{Tab.settings.tabContent}
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
        
    }
}

#Preview {
    ContentView()
}
