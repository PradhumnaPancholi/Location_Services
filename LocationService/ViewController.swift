//
//  ViewController.swift
//  LocationService
//
//  Created by Pradhumna Pancholi on 2019-07-24.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    //Barrie coordinates//
    let barrieLat = 44.3894
    let barrieLong = -79.6903
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setMapVariables()
    }
    
    //to set mapview for barrie//
    func setMapVariables(){
        let centre: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: barrieLat, longitude: barrieLong)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        
        let region = MKCoordinateRegion(center: centre, span: span)
        
        self.mapView.setRegion(region, animated: true)
    }
}

