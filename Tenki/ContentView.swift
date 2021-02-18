//
//  ContentView.swift
//  Tenki
//
//  Created by Johnson Osei Yeboah on 16/02/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack{
                CityTextView(cityName: "Accra", country: "GH")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill": "cloud.sun.fill", temperature: 32)
            
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
                    isNight.toggle()
                } label:{
                    WeatherButtonView(title: "Change Day Time", textColor: .blue, btnBackgroundColor: .white)
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
    @Binding var isNight:Bool

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? Color.black : Color.blue, isNight ? .gray : Color("lightBlue")]),
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

