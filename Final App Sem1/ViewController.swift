//
//  ViewController.swift
//  Final App Sem1
//
//  Created by Sydney Ripsky on 12/2/19.
//  Copyright © 2019 Sydney Ripsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var restaurants = Restaurants()
    var anywhereList = ["Chick-fil-a", "Paul's Burritos", "Noodles & Co", "Taco Bell", "MOD", "Potbelly", "Five Guys", "Dog Tracks", "Twisted Burger", "Icecream Social", "CPK", "Panera", "Savory Salads", "Jimmy Johns", "Egg Harbor", "Einsteins","Culvers", "Wendys", "Heinens", "Meatheads", "Portillos", "Uncle Julios","TGI Fridays", "Big Iron Horse", "Moretti's", "Remember Charlottes", "Panda Express","Red Robin", "Southern Belle", "Canteen", "Brunch Cafe", "Poke Burrito", "Sushi Express", "Chessies", "Freddies", "My Flavor It Place"]
    var somewhatHealthyList = ["Noodles & Co", "Potbelly", "Heinens", "CPK", "Subway", "Zupas", "Savory Salads", "Pita Pita", "Panera", "Costco", "Egg Harbor", "Jamba Juice", "Sushi Express"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onAnywhereButtonTapped(_ sender: Any)
    {
        restaurants.listOfRestaurants = anywhereList //connects button to segue and to list of Anywhere Restaurants within class restaurants
        performSegue(withIdentifier: "FirstSegue" , sender: Any?.self)
    }
    
    @IBAction func onSomewhatHealthyButtonTapped(_ sender: Any) {
        restaurants.listOfRestaurants = somewhatHealthyList
        performSegue(withIdentifier: "FirstSegue", sender: Any?.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let dvc = segue.destination as! RestaurantsDisplay
        dvc.restaurants = self.restaurants //transfers data from one viewcontroller to the other
    }
    
}

