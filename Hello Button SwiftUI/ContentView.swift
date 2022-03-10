//
//  ContentView.swift
//  Hello Button SwiftUI
//
//  Created by Yujie Zhang on 3/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        VStack(spacing: 200){
        HStack{
            Button{
                self.count -= 1
                print("Decrease button \(self.count)")
            } label:{
                Text("Decrease").frame(maxWidth: .infinity)
            }
            Button{
                self.count = 0
                print("reset \(self.count)")
            } label:{
                Text("Reset")
            }
            Button{
                self.count += 1
                print("Increase button \(self.count)")
            } label:{
                Text("Increase").frame(maxWidth: .infinity)
            }
            
        }
            Text("Count = \(self.count)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
