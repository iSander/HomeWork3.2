//
//  SliderView.swift
//  HomeWork3.2
//
//  Created by Alex Sander on 25.07.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .frame(width: 35, alignment: .leading)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            TextField("color",
                      text: Binding.constant("\(lround(value))"))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.black)
                .frame(width: 50)
                .keyboardType(.numberPad)
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: Binding.constant(0), color: .orange)
    }
}
