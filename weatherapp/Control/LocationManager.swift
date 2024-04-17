import SwiftUI
import Foundation
import CoreLocation //內建取得位置
class LocationManager:NSObject,ObservableObject,CLLocationManagerDelegate{
    let manager=CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init(){
        super.init()
        manager.delegate=self
    }
    func requestLocation(){
        isLoading=true
        manager.requestLocation()
    }
    //第一次要詢問意願
    func locationManager(_ manager: CLLocationManager,didUpdateLocations locations:[CLLocation]){
        location=locations.first?.coordinate
        isLoading=false
        
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("Cannot get the Location",error)
        isLoading=false
    }
}
