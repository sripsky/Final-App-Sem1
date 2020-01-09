//
//  RestaurantsDisplay.swift
//  Final App Sem1
//
//  Created by Sydney Ripsky on 12/11/19.
//  Copyright © 2019 Sydney Ripsky. All rights reserved.
//

import UIKit

class RestaurantsDisplay: UIViewController {
    @IBOutlet weak var textView: UITextView!
    var restaurants = Restaurants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = restaurants.listOfRestaurants.randomElement() //randomizes the chosen array
    }
}

