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
    
    var zoom = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapaFiscalizar.showsUserLocation = true
        self.mapaFiscalizar.zoomEnabled = true
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        locationManager.requestAlwaysAuthorization()
        
        


    }
    
    override func viewDidAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
        
        if overlay is MKCircle {
            let circleRenderer = MKCircleRenderer(overlay: overlay)
            circleRenderer.lineWidth = 1.0
            //Cor do circulo
                circleRenderer.strokeColor = Styles.azulOverlay
                circleRenderer.fillColor = Styles.azulOverlay.colorWithAlphaComponent(0.2)
            return circleRenderer
        }
        
        return MKOverlayRenderer()
    }
    
    func locationManager(manager: CLLocationManager, didFinishDeferredUpdatesWithError error: NSError?) {
        
    }
    
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        
        self.mapaFiscalizar.removeOverlays(self.mapaFiscalizar.overlays)
        
        if(self.zoom == false) {
            let coor = self.mapaFiscalizar.userLocation.location?.coordinate
            let region = MKCoordinateRegionMakeWithDistance(coor!, 2500, 2500)
            self.mapaFiscalizar.setRegion(region, animated: true)
            self.zoom = true
        }
        
        //Adiciona circulo em torno da localização
        let circleOverlay = MKCircle(centerCoordinate: mapaFiscalizar.userLocation.coordinate, radius: 1000)
        circleOverlay.title = ""
        circleOverlay.subtitle = ""
        mapaFiscalizar.addOverlay(circleOverlay)
        
        
    }

}
