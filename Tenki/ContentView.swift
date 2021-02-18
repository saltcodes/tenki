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
            BackgroundView(topColor: Color.blue,bottomColor: Color("lightBlue"))
            
            VStack{
                CityTextView(cityName: "Accra", country: "GH")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 32)
            
                HStack(spacing:8){
                    WheatherDayView(dayOfWeek: "MON", imageName: "cloud.drizzle.fill", dayTempreture: 36)
                    WheatherDayView(dayOfWeek: "TUE", imageName: "wind", dayTempreture: 29)
                    WheatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.fill", dayTempreture: 34)
                    WheatherDayView(dayOfWeek: "THU", imageName: "sun.max.fill", dayTempreture: 40)
                    WheatherDayView(dayOfWeek: "FRI", imageName: "sun.haze.fill", dayTempreture: 29)
                    WheatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", dayTempreture: 31)
                    
                }
                Spacer()
                Button{
                    
                } label:{
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, design: .default))
                        .cornerRadius(8)
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

struct BackgroundView: View {
    var topColor:Color
    var bottomColor:Color

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    var cityName:String
    var country:String
    var body: some View {
        Text("\(cityName) ,\(country)")
            .font(.system(size: 32,weight:.medium,design:.default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack(spacing:8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 40)
    }
}
