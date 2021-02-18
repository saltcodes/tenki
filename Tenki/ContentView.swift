//
//  ContentView.swift
//  Tenki
//
//  Created by Johnson Osei Yeboah on 16/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Text("Accra,GH")
                    .font(.system(size: 32,weight:.medium,design:.default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing:8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("32°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack(spacing:8){
                    WheatherDayView(dayOfWeek: "MON", imageName: "cloud.drizzle.fill", dayTempreture: 36)
                    WheatherDayView(dayOfWeek: "TUE", imageName: "wind", dayTempreture: 29)
                    WheatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.fill", dayTempreture: 34)
                    WheatherDayView(dayOfWeek: "THU", imageName: "sun.max.fill", dayTempreture: 40)
                    WheatherDayView(dayOfWeek: "FRI", imageName: "sun.haze.fill", dayTempreture: 29)
                    WheatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", dayTempreture: 31)
                    
                }
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WheatherDayView: View {
    var dayOfWeek:String
    var imageName:String
    var dayTempreture:Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48)
            Text("\(dayTempreture)°")
                .font(.system(size: 20))
                .foregroundColor(.white)
        }
    }
}
