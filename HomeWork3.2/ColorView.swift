//
//  ColorView.swift
//  HomeWork3.2
//
//  Created by Alex Sander on 25.07.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
            .frame(height: 128)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 8))
            .cornerRadius(25)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 100, green: 100, blue: 100)
    }
}
