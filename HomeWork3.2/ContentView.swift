//
//  ContentView.swift
//  HomeWork3.2
//
//  Created by Alex Sander on 25.07.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.blue)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                ColorView(red: red, green: green, blue: blue)
                
                SliderView(sliderValue: $red,
                            textValue: "\(lround(red))",
                            color: .red)
                
                SliderView(sliderValue: $green,
                            textValue: "\(lround(green))",
                            color: .green)
                
                SliderView(sliderValue: $blue,
                            textValue: "\(lround(blue))",
                            color: .blue)
                
                Spacer()
            }
        .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
