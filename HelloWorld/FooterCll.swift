//
//  FooterCll.swift
//  HelloWorld
//
//  Created by admin on 6/23/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
import MapKit

class FooterCll: UITableViewCell {
    @IBOutlet weak var mapView: MKMapView!
let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.centerMapOnLocation(location: initialLocation)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    
}
