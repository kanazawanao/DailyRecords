//
//  Diary.swift
//  DailyRecords
//
//  Created by 金澤直 on 2020/05/22.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct Diary: View {
    @State var date = Date()
    @State var title = ""
    @State var content = ""
    // UserDefaults のインスタンス
    let userDefaults = UserDefaults.standard
    var body: some View {
        Form {
            Section {
                DatePicker(
                    selection: $date,
                    displayedComponents: .date,
                    label: {Text("日付を選択してください")})
                TextField("タイトル", text: $title)
                MultilineTextView(text: $content)
                    .frame(height: 300)
                
            }
            Section {
                Button(action: {
                    self.saveData(str: "test")
                }) {
                    Text("保存")
                }
            }
        }
    }
    
   func saveData(str: String){

       // Keyを指定して保存
       userDefaults.set(str, forKey: "KEYTEST")
   }
    
}

struct Diary_Previews: PreviewProvider {
    static var previews: some View {
        Diary()
    }
}
