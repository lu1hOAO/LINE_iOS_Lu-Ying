//進入點
import SwiftUI
import CoreLocationUI
struct WelcomeView: View{
    @EnvironmentObject var locationManager: LocationManager
    var body: some View{
        VStack{
            VStack(spacing: 20){
                Text("好天氣 好手氣")
                    .bold().font(.title)
               // Text("好想睡下去").bold().font(.title3)
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            LocationButton(.sendCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .buttonStyle(.bordered)
            .tint(.brown)
            
            
    
        
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        
    }
}
