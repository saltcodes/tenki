//
//  WeatherButton.swift
//  Tenki
//
//  Created by Johnson Osei Yeboah on 18/02/2021.
//

import SwiftUI

struct WeatherButtonView:View {
    var title:String
    var textColor:Color
    var btnBackgroundColor:Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .foregroundColor(textColor)
            .background(btnBackgroundColor)
            .font(.system(size: 20, design: .default))
            .cornerRadius(8)
    }
}
