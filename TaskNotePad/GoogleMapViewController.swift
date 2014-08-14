//
//  ViewController.swift
//  TaskNotePad
//
//  Created by Paul Marney on 8/14/14.
//  Copyright (c) 2014 Exmaples. All rights reserved.
//

import UIKit

class GoogleMapViewController: UIViewController,GMSMapViewDelegate {
    
    @IBOutlet var gmaps : GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var target: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 51.6, longitude: 17.2)
        //var camera: GMSCameraPosition = GMSCameraPosition(target: target, zoom: 6, bearing: 0, viewingAngle: 0)
        
        
        gmaps = GMSMapView(frame: CGRectMake(100, 200, 200, 200))
        if let map = gmaps {
            map.myLocationEnabled = true
            map.delegate = self
            
            self.view.addSubview(gmaps)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

