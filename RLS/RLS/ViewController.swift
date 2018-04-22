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
        //let location=locations[0]
         let regionRadius: CLLocationDistance = 1000
        //let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
        let myLocation:CLLocationCoordinate2D=CLLocationCoordinate2DMake(122.0322, 37.3230)
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(myLocation, regionRadius, regionRadius)
        //let region:MKCoordinateRegion=MKCoordinateRegionMake(myLocation, span)
        map.setRegion(coordinateRegion, animated: true)
        //self.map.showsUserLocation=true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        manager.delegate=self
        locationManager(<#T##manager: CLLocationManager##CLLocationManager#>, didUpdateLocations: <#T##[CLLocation]#>)
        manager.desiredAccuracy=kCLLocationAccuracyBest
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
        
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
}
