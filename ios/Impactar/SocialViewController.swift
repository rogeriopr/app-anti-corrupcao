//
//  SocialViewController.swift
//  Impactar
//
//  Created by Davi Rodrigues on 13/04/16.
//  Copyright © 2016 Davi Rodrigues. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SocialViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var socialMapa: MKMapView!
    
    var locationManager = CLLocationManager()
    
    var zoom = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.socialMapa.showsUserLocation = true
        self.socialMapa.zoomEnabled = true
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        locationManager.requestAlwaysAuthorization()
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
        
        self.socialMapa.removeOverlays(self.socialMapa.overlays)
        self.socialMapa.removeAnnotations(self.socialMapa.annotations)
        
        if(self.zoom == false) {
            let coor = self.socialMapa.userLocation.location?.coordinate
            let region = MKCoordinateRegionMakeWithDistance(coor!, 2500, 2500)
            self.socialMapa.setRegion(region, animated: true)
            self.zoom = true
        }
        
        //Adiciona circulo em torno da localização
        let circleOverlay = MKCircle(centerCoordinate: socialMapa.userLocation.coordinate, radius: 1000)
        circleOverlay.title = ""
        circleOverlay.subtitle = ""
        socialMapa.addOverlay(circleOverlay)
        
        //Adiciona alguns pins
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = socialMapa.userLocation.coordinate
        annotation1.coordinate.latitude = annotation1.coordinate.latitude + 0.0016
        annotation1.coordinate.longitude = annotation1.coordinate.longitude - 0.0027
        annotation1.title = "Doação de alimentos escola Padre Anchieta"
        annotation1.subtitle = "Detalhes necessidade no local, de motivo colaborativo"
        socialMapa.addAnnotation(annotation1)
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = socialMapa.userLocation.coordinate
        annotation2.coordinate.latitude = annotation1.coordinate.latitude - 0.0038
        annotation2.coordinate.longitude = annotation1.coordinate.longitude + 0.0050
        annotation2.title = "Doação de alimentos escola Padre Anchieta"
        annotation2.subtitle = "Detalhes necessidade no local, de motivo colaborativo"
        socialMapa.addAnnotation(annotation2)
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = socialMapa.userLocation.coordinate
        annotation3.coordinate.latitude = annotation3.coordinate.latitude - 0.004
        annotation3.coordinate.longitude = annotation3.coordinate.longitude - 0.0027
        annotation3.title = "Doação de alimentos escola Padre Anchieta"
        annotation3.subtitle = "Detalhes necessidade no local, de motivo colaborativo"
        socialMapa.addAnnotation(annotation3)
        
        
    }

}
