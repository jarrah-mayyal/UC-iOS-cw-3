//
//  ContentView.swift
//  CW3 part 1
//
//  Created by JARRAH MAYYAL on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var write = ""
    @State var state = ""
    var body: some View {
        VStack{
            Text("حاسبة الدرجات")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
            
            Image ("cu1")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(80)
            TextField("tybe your grade",text: $write)
                .multilineTextAlignment(.center)
            Spacer()
            Text("أحسب درجتي")
                .font(.largeTitle)
                .background(.red)
                .clipShape(Capsule())
                .frame(width: 250)
                .onTapGesture {
                    if (Int(write) ?? 0 ) >= 90 {
                        
                        state = "ممتاز"
                    }
                    else if (Int(write) ?? 0 ) >= 80 {
                        
                        state = "جيد جداً"
                    }
                    
                }
                        
        }
        background(.blue)
            .scaledToFit()
    }
        
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
