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
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
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
                Button(action: {
                    self.showImagePicker = true
                }){
                    Text("open camera")
                }.padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                image?.resizable()
                    .scaledToFit()
            }
            Section {
                Button(action: {
                    self.saveData(str: "test")
                }) {
                    Text("保存")
                }
            }
        }.sheet(isPresented: self.$showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
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
