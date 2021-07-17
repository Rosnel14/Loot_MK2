//
//  DashView.swift
//  Loot
//
//  Created by Rosnel Leyva-Cortés on 7/15/21.
//

/// This whole thing loads the main dashboard, it is a bit bloated

import UIKit
import MapKit

class DashView: UIViewController, MKMapViewDelegate {

    //initialization for the application
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        super.view.backgroundColor = UIColor .systemBackground
       
        
        createBtnSettings()
        createBtnProfile()
        createBtnConnections()
        createLabel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //dispose of any resources that can be recreated
    }
    
    //After View has been loaded
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
       loadMap()
    }
    
    //label creation
    private func createLabel() {
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 50, width: 100, height: 20)
        label.text = "Dashboard"
        label.textAlignment = .center
        view.addSubview(label)
        
    }
    
    //button functions - start
    
    private func createBtnSettings(){
        let button = UIButton(frame: CGRect(x: view.center.x + 50
                                            ,
                                            y: view.center.y + 300,
                                            width: 200,
                                            height: 60))
        button.setTitle("Settings",
                        for: .normal)
        button.setTitleColor(.black,
                             for: .normal)
        button.addTarget(self,
                         action: #selector(buttonActionSettings),
                         for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc
    func buttonActionSettings() {
        print("Button pressed") 
    }
    
    private func createBtnProfile(){
        let button = UIButton(frame: CGRect(x: view.center.x - 250,
                                            y: view.center.y + 300,
                                            width: 200,
                                            height: 60))
        button.setTitle("Profile",
                        for: .normal)
        button.setTitleColor(.black,
                             for: .normal)
        button.addTarget(self,
                         action: #selector(buttonActionProfile),
                         for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc
    func buttonActionProfile() {
        //print("Button pressed") to be replaced
    }
    
    private func createBtnConnections(){
        let button = UIButton(frame: CGRect(x: view.center.x - 100,
                                            y: view.center.y + 300,
                                            width: 200,
                                            height: 60))
        button.setTitle("Connections",
                        for: .normal)
        button.setTitleColor(.black,
                             for: .normal)
        button.addTarget(self,
                         action: #selector(buttonActionConnections),
                         for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc
    func buttonActionConnections() {
        //print("Button pressed") to be replaced
    }
    
    //button functions - end
    
    //this loads the mkmapview
    private func loadMap(){
        let mapView = MKMapView()
        
        let leftMargin:CGFloat = 0
        let topMargin:CGFloat = 0
        let mapWidth:CGFloat = view.frame.size.width
        let mapHeight:CGFloat = view.frame.size.height
        
        mapView.frame = CGRect(x: leftMargin, y: topMargin, width: mapWidth, height: mapHeight-300)
        
        mapView.mapType = MKMapType.standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        
        // Or, if needed, we can position map in the center of the view
        mapView.center = view.center
        mapView.setUserTrackingMode(MKUserTrackingMode.follow, animated: true)
        mapView.showsUserLocation = true
        
        view.addSubview(mapView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
