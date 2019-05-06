//
//  ViewController.swift
//  Nature Router
//
//  Created by Brittany.Waters on 5/6/19.
//  Copyright © 2019 Brittany.Waters. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
 
    /////////////////////////////////OUTLETS/////////////////////////////////////
    
    @IBOutlet weak var dayMapView: MKMapView!

    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        checkLocationServices()
    }
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            checkLocationAuthorization()
        } else {
            // Show alert letting the user know they have to turn this on.
        }
    }
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            dayMapView.showsUserLocation = true
        case .denied: // Show alert telling users how to turn on permissions
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            dayMapView.showsUserLocation = true
        case .restricted: // Show an alert letting them know what’s up
            break
        case .authorizedAlways:
            break
        }
    }

    /////////////////////////////////ACTIONS/////////////////////////////////////
    
    @IBAction func findParkButtonPressed(_ sender: Any) {
    }
  
    @IBAction func weatherButtonPressed(_ sender: Any) {
    }
    
    @IBAction func reminderButtonPressed(_ sender: Any) {
    }
    //----------------------------------------------------------------------------
    @IBAction func eveningFindAParkButtonPressed(_ sender: Any) {
    }
    
    @IBAction func eveningWeatherButtonPressed(_ sender: Any) {
    }
    
    @IBAction func eveningReminderButtonPressed(_ sender: Any) {
    }
    //----------------------------------------------------------------------------
    
    @IBAction func nightFindParkButtonPressed(_ sender: Any) {
    }
    
    @IBAction func nightWeatherButtonPressed(_ sender: Any) {
    }
    
    
    @IBAction func nightReminderButtonPressed(_ sender: Any) {
    }
}

