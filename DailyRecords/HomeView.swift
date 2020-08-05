//
//  HomeView.swift
//  DailyRecords
//
//  Created by 金澤直 on 2020/05/22.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    let f = DateFormatter()
    var body: some View {
        f.dateFormat = "dd"
        let now = Date()
        return NavigationView {
            VStack {
                ZStack {
                    Circle()
                        .fill(Color.blue)
                    Text(f.string(from: now))
                        .font(.largeTitle)
                }
                .padding()
                Text("aaa")
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
