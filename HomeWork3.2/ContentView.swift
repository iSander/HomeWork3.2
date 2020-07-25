//
//  ContentView.swift
//  HomeWork3.2
//
//  Created by Alex Sander on 25.07.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.blue)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                ColorView(color: UIColor(red: CGFloat(redValue)/255,
                                         green: CGFloat(greenValue)/255,
                                         blue: CGFloat(blueValue)/255,
                                         alpha: 1))
                
                SliderView(value: $redValue, color: .red)
                SliderView(value: $greenValue, color: .green)
                SliderView(value: $blueValue, color: .blue)
                
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
