//
//  ContentView.swift
//  ToDo
//
//  Created by 木村朋広 on 2024/02/09.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("memo") var savedMemo = "Default valueだよ!"
    @State var currentMemo = ""
    var body: some View {
        VStack{
            HStack {
                TextField("Memo", text: $currentMemo) //viewとviewをつなぐ!　TextFieldと$currentMemo
                    .padding()
                    .background(.white)
                    .cornerRadius(5)
                Button("Enter") {
                    savedMemo = currentMemo
                    currentMemo = ""
                } //button
                .buttonStyle(.bordered)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(5)

            } //HStack
            .padding()
            .background(.yellow)
            Spacer()
            Text(savedMemo)
            Spacer()
        }//VStack
    } // body
} //struct ContentViwe

#Preview {
    ContentView()
}
