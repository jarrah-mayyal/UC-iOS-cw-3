//
//  ContentView.swift
//  cw3p2
//
//  Created by JARRAH MAYYAL on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State var counterr = 0
    @State var counterrr = 0
    
    
    var body: some View {

        VStack{

            ExtractedView(text: "استغفر الله العظيم", counter: $counter)
            ExtractedView(text: "سبحان الله وبحمده", counter: $counterr)
            ExtractedView(text: "سبحان الله العظيم", counter: $counterrr)

            
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()

        }

    }
}

struct ExtractedView: View {
    var text: String
    @Binding var counter: Int
    var body: some View {
        HStack{
            Text(text)
                .font(.largeTitle)
                .foregroundColor(Color.gray)
            Spacer()
            Text("\(counter)")
                .foregroundColor(.white)
                .font(.title)
                .frame(width: 100, height: 100)
                .background(Color.cyan)
                .clipShape(Circle())
                .onTapGesture {
                    counter = (counter + 1)
                }
                .padding()

        }
    }
}
