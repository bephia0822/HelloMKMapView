//
//  ViewController.swift
//  HelloMKMapView
//
//  Created by Sophia Wang on 2021/3/26.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    @IBAction func addMeAnnotation(_ sender: UILongPressGestureRecognizer) {
        let touchPoint = sender.location(in: map)
        let touchCoodinate:CLLocationCoordinate2D = map.convert(touchPoint, toCoordinateFrom: map)
        
        let annotation = MKPointAnnotation()  //設一個大頭針
        annotation.coordinate = touchCoodinate
        annotation.title = "New Place"
        annotation.subtitle = "One day I wanna be here"
        map.addAnnotation(annotation)
    }  //手指長按出現大頭針
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let latitude: CLLocationDegrees = 48.858547   //緯度
        let longitude: CLLocationDegrees = 2.294524   //經度
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)    //座標
        let xScale: CLLocationDegrees = 0.01   //x方向的放大比例
        let yScale: CLLocationDegrees = 0.01   //x方向的放大比例
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: yScale, longitudeDelta: xScale)    //整體放大比例
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        //map.mapType = .satellite  //變衛星模式
        
        
        
    }


}

