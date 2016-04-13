//
//  FiscalizarViewController.swift
//  Impactar
//
//  Created by Davi Rodrigues on 13/04/16.
//  Copyright © 2016 Davi Rodrigues. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FiscalizarViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    ///
    @IBOutlet weak var mapaFiscalizar: MKMapView!
    
    @IBOutlet weak var fiscalizatTitleLabel: UINavigationItem!
    
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapaFiscalizar.showsUserLocation = true
        self.mapaFiscalizar.zoomEnabled = true
        
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        locationManager.requestAlwaysAuthorization()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
