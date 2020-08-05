//
//  BasicConfigForm.swift
//  DailyRecords
//
//  Created by 金澤直 on 2020/05/22.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI
struct BasicConfigForm: View {
    @State var target = ""
    @State var continuationDays = 0
    @State var startDate = Date()
    @State var endDate = Date()
    var formatter = DateFormatter()
    var body: some View {
        Form {
            Section(header: Text("基本設定")) {
                TextField("目標を入力してください", text: $target)
                DatePicker(selection: $startDate,
                           displayedComponents: .date,
                           label: {Text("開始日")})
                DatePicker(selection: $endDate,
                           displayedComponents: .date,
                           label: {Text("終了日")})
            }
            Section {
                Button(action: {}) {
                    Text("確定")
                }
            }
        }
    }
}

struct BasicConfigForm_Previews: PreviewProvider {
    static var previews: some View {
        BasicConfigForm()
    }
}
