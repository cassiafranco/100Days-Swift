//
//  ViewController.swift
//  Project16
//
//  Created by cassia franco on 15/09/21.
//

import MapKit
import UIKit

class ViewController: UIViewController, MKMapViewDelegate{
    
    @IBOutlet var mapView: MKMapView!
    
    // challenge 2
    let mapTypes = ["hybrid": MKMapType.hybrid, "hybridFlyover": MKMapType.hybridFlyover, "mutedStandard": MKMapType.mutedStandard, "satellite": MKMapType.satellite, "satelliteFlyover": MKMapType.satelliteFlyover, "standard": MKMapType.standard]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let london = Capital(title: "London", coordinate: CLLocationCoordinate2D(latitude: 51.50722, longitude: -0.12775), info: "Home to the 2012 Summer Olympics", wikipediaUrl: "https://en.wikipedia.org/wiki/London")
        let oslo = Capital(title: "Oslo", coordinate: CLLocationCoordinate2D(latitude: 59.95, longitude: 10.75), info: "Founded over a thousand years ago.", wikipediaUrl: "https://en.wikipedia.org/wiki/Oslo")
        let paris = Capital(title: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508), info: "Often called the City of Light.", wikipediaUrl: "https://en.wikipedia.org/wiki/Paris")
        let rome = Capital(title: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5), info: "Has a whole country inside it.", wikipediaUrl: "https://en.wikipedia.org/wiki/Rome")
        let washington = Capital(title: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667), info: "Named after George himself.", wikipediaUrl: "https://en.wikipedia.org/wiki/Washington,_D.C.")
        let brazil = Capital(title: "Brazil", coordinate: CLLocationCoordinate2D(latitude: -8.40400, longitude: -55.94306), info:"Federative Republic of Brazil" , wikipediaUrl: "https://en.wikipedia.org/wiki/Brazil")
        
        mapView.addAnnotations([london,oslo,paris,rome,washington,brazil])
        
        //challenge 2
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Map type", style: .plain, target: self, action: #selector(selectMapType))
    }
    //chalenge 2
    @objc func selectMapType(){
        let ac = UIAlertController(title: "My type", message: nil, preferredStyle: .actionSheet)
        ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        for mapType in Array(mapTypes.keys).sorted(by: <) {
            ac.addAction(UIAlertAction(title: mapType, style: .default, handler: mapTypeSelected))
        }
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(ac, animated: true)
    }
    //chalenge 2
    func mapTypeSelected(action: UIAlertAction){
        guard let title = action.title else { return }
        
        if let type = mapTypes[title] {
            mapView.mapType = type
        }
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is Capital else { return nil }
        
        let identifier = "Capital"
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
            
            let btn = UIButton(type: .detailDisclosure)
            annotationView?.rightCalloutAccessoryView = btn
            
        }else {
            annotationView?.annotation = annotation
            //            chalenge 1
            if let pinView = annotationView as? MKPinAnnotationView {
                pinView.pinTintColor = UIColor(red: 0, green: 0.7, blue: 0, alpha: 1)
            }
        }
        return annotationView
    }
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        guard let capital = view.annotation as? Capital else { return }
        
        let placeName = capital.title
        let placeInfo = capital.info
        
        let ac = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .alert)
        // challenge 3
        ac.addAction(UIAlertAction(title: "Wikipedia", style: .default, handler: { [weak self] _ in
            self?.openWikipedia(url: capital.wikipediaUrl)
        }))
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    //chalenge 3
    
    func openWikipedia(url: String) {
        if let vc = storyboard?.instantiateViewController(identifier: "WikiViewController") as? WikiViewController {
            vc.website = url
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

