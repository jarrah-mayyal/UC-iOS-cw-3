//
//  ContentView.swift
//  CW3 part 1
//
//  Created by JARRAH MAYYAL on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var TheGrade = ""
    @State var OnGrade = ""
    var body: some View {
        
        ZStack{
            
            Color.yellow.ignoresSafeArea()
            VStack{
                Text("حاسبة الدرجات المطورة")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                Image("cu1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Spacer()
                TextField("ادخل الدرجة التي حصلت عليها", text: $TheGrade)
                    .frame(width: 300, height: 40)
                    .background(Color.cyan)
                    .padding()
                Text("أحسب درجتي")
                    .padding()
                    .background(Color.teal)
                    .clipShape(Capsule())
                    .onTapGesture {
                        if Int(TheGrade) ?? 0 >= 90 {
                            OnGrade = "ممتاز"
                        } else if Int(TheGrade) ?? 0 >= 80 {
                            OnGrade = "جيد جداً"
                            
                        } else if Int(TheGrade) ?? 0 >= 70 {
                            OnGrade = "جيد"
                            
                        }else if Int(TheGrade) ?? 0 >= 60 {
                            OnGrade = "lrfmg"
                            
                        } else {
                            OnGrade = "شكلك عايدها ياحلو"
                        }
                    }
                
                
                
                
                Text("لقد حصلت على الدرجة")
                Spacer()
                Text(OnGrade)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                
                
            }
            
            
            }
        }
        
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
    }
