import SwiftUI
struct WeatherView: View {
    var weather: ResponseBody
    var body: some View {
        ZStack(alignment: .leading){
            VStack{
                VStack(alignment: .leading,spacing: 5){
                    Text("Today,\(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(weather.name)
                        .bold()
                        .font(.title)
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                Spacer()
                VStack{
                    HStack{
                            //多雲時晴
                            if(weather.weather[0].main=="Clouds"){
                                Text("")
                                Text("多雲時晴")
                                    .font(.system(size: 30))
                                    .bold()
                            }else if(weather.weather[0].main=="Sun"){
                                Text("")
                                Text("豔陽高照")
                                    .font(.system(size: 30))
                                    .bold()
                            }else if(weather.weather[0].main=="Rain"){
                                Text("")
                                Text("陰雨綿綿")
                                    .font(.system(size: 30))
                                    .bold()
                                
                            }//查無所有天氣代號
                        //體感溫度
                        Spacer()
                        Text(" ")
                        Text(weather.main.feelsLike.roundDouble()+"°Ｃ")
                            .font(.system(size:30 ))
                            .font(.title2)
                            .bold()
                            .padding()
                    }
                    Spacer()
                        .frame(height: 80)
                    HStack{
                        AsyncImage(url: URL(string: "https://img.onl/JsNQS1")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 500)
                        } placeholder: {
                            ProgressView()
                        }
                        Spacer()
                        AsyncImage(url: URL(string: "https://img.onl/BUDINt")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 425)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
            }
            .padding()
            VStack{
                Spacer()
                VStack(alignment: .leading, spacing: 20){
                    Text("目前天氣資訊")
                        .bold().padding(.bottom)
                    HStack{
                        //最低溫度
                        WeatherRow(logo:"thermometer.medium",name:"最低溫度",value:(weather.main.tempMin.roundDouble()+("°C")))
                        Spacer()
                        //最高溫度
                        WeatherRow(logo:"thermometer.sun",name:"最高溫度",value:(weather.main.tempMax.roundDouble()+("°C")))
                        Spacer()
                        //體感溫度
                        WeatherRow(logo:"thermometer.variable.and.figure",name:"體感溫度",value:(weather.main.feelsLike.roundDouble()+("°C")))
                        Spacer()
                        //濕度
                        WeatherRow(logo:"humidity",name:"濕度",value:"\(weather.main.humidity.roundDouble())%")
                    }
                }
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding()
                    .padding(.bottom,20)
                    .foregroundColor(.brown)
                    .background(.white)
                    .cornerRadius(20,corners:[.topLeft, .topRight])
                
            }
            
        }.edgesIgnoringSafeArea(.bottom)
         .background(Color(hue:0.123,saturation: 0.124,brightness: 0.732))
         .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
