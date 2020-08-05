//
//  ContentView.swift
//  DailyRecords
//
//  Created by 金澤直 on 2020/05/21.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
            }
            Diary()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Diary")
            }
            BasicConfigForm()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Config")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
