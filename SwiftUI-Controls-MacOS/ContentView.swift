//
//  ContentView.swift
//  SwiftUI-Controls-MacOS
//
//  Created by Tommie Carter on 8/31/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        Text("Hello World")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//    }
//}

struct ContentView: View {
    @State var field1: String = ""
    @State var field2: String = ""
    @State var field3: String = ""
    @State var field4: String = ""
    @State var field5: String = ""

    var body: some View {
        List { // works if this is VStack or Form
            Section(header: Text("Form Header"), footer: Text("Form Footer")) {
                TextField("Line 1", text: $field1).environment(\.isEnabled, true)
                TextField("Line 2", text: $field2)
                TextField("Line 3", text: $field3)
                TextField("Line 4", text: $field4)
                TextField("Line 5", text: $field5)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
