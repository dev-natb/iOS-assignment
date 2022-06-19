//
//  ViewController.swift
//  TrafficLights
//
//  Created by DevRelMatters on 11/6/2022.
//

import UIKit

class ViewController: UIViewController {

     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // LOAD IMAGE VIEW AND ASSIGN VARIABLE FOR TRAFFIC LIGHT IMAGE
    @IBOutlet weak var myImageView: UIImageView!
    
    
    // DEFINE NEW DATA TYPE FOR TRAFFIC LIGHT OPTIONS
    enum TrafficLightColour{
        case green
        case amber
        case red
    }
    
    // DEFINE NEW VARIABLE FOR STORING CURRENT TRAFFIC LIGHT OPTION
    var currentStatus = TrafficLightColour.green
    
    // DEFINE FUNCTION THAT CAN SWITCH BETWEEN DIFFERENT TRAFFIC LIGHT OPTIONS
    func updateTrafficLight() {
        // AUTOMATICALLY IDENTIFY THE CLASS AND VARIABLE FOR UPDATING THE TRAFFIC LIGHT
        switch self.currentStatus {
        // REFERENCE TRAFFIC LIGHT OPTION 1
        case .green:
            // UPDATE IMAGE VIEW TO DISPLAY AMBER TRAFFIC LIGHT FILE
            self.myImageView.image = UIImage(named: "amber")
            // UPDATE VARIABLE TO AMBER
            self.currentStatus = TrafficLightColour.amber
            // LOG NEW STATE
            print("Light changes to amber")
        // REFERENCE TRAFFIC LIGHT OPTION 2
        case .amber:
            // UPDATE IMAGE VIEW TO DISPLAY RED TRAFFIC LIGHT FILE
            self.myImageView.image = UIImage(named: "red")
            // UPDATE VARIABLE TO RED
            self.currentStatus = TrafficLightColour.red
            // LOG NEW STATE
            print("Light changes to red")
        // REFERENCE TRAFFIC LIGHT OPTION 3
        case .red:
            // UPDATE IMAGE VIEW TO DISPLAY GREEN TRAFFIC LIGHT FILE
            self.myImageView.image = UIImage(named: "green")
            // UPDATE VARIABLE TO GREEN
            self.currentStatus = TrafficLightColour.green
            print("Light changes to green")
          
        }
    }
    // END FUNCTION
    
    
    // LINK BUTTON TO AN ACTION
    @IBAction func clickButton(_ sender: Any) {
        // EXECUTE FUNCTION TO UPDATE TRAFFIC LIGHT STATE
        updateTrafficLight()
    }
    // END BUTTON
    
    
    
    }
