//
//  ViewController.swift
//  RLS
//
//  Created by Hackathon Event on 4/21/18.
//  Copyright © 2018 Hackathon Event. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit


class ViewController: UIViewController,CLLocationManagerDelegate {
    @IBOutlet weak var map: MKMapView!
    let manager=CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location=locations[0]
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let myLocation:CLLocationCoordinate2D=CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region:MKCoordinateRegion=MKCoordinateRegionMake(myLocation, span)
        map.setRegion(region, animated: true)
        self.map.showsUserLocation=true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        manager.delegate=self
        manager.desiredAccuracy=kCLLocationAccuracyBest
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
