import SwiftUI
struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    var body: some View {
        VStack {
            //取得位置 需要天氣
            if let location = locationManager.location{
                if let weather = weather {
                    WeatherView(weather:weather)
                }else{
                    LoadingView()
                        .task{
                            do{
                               weather = try await weatherManager.getCurrentWeather(latitude:location.latitude,longitude:location.longitude)
                            }catch{
                                print("Error getting weather:\(error)")
                            }
                        }
                    
                    
                }
            }else{
                if locationManager.isLoading{
                    LoadingView()
                }else{
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.123, saturation: 0.124, brightness: 0.732))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews:PreviewProvider{
    static var previews: some View{
        ContentView()
    }
    
}
