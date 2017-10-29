//
//  EventDescriptionViewController.swift
//  Taller
//
//  Created by saul ulises urias guzmàn on 29/10/17.
//  Copyright © 2017 saul ulises urias guzmàn. All rights reserved.
//

import UIKit
import Social

class EventDescriptionViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet weak var imageEvent: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    //MARK: - Varailabels And Constants
    var selectedEventIndex = Int()
    
    //MARK: - View Life
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setValues()
    }
    
    //MARK: - Actions
    @IBAction func shareButtonPressed(_ sender: Any) {
        self.shareOnFacebook()
    }
    
    
    //MARK: - Functions
    func setValues(){
        let event = events[self.selectedEventIndex]
        self.imageEvent.image = event.image
        self.labelName.text = event.name
        self.labelDate.text = event.date
        self.labelLocation.text = event.location
        self.labelDescription.text = event.description
    }
    
    
    
    func shareOnFacebook(){
        //Alert
        let alert = UIAlertController(title: "Share", message: "Share this Event!", preferredStyle: .actionSheet)
        
        //First action
        let actionOne = UIAlertAction(title: "Share on Facebook", style: .default) { (action) in
            
            //Checking if user is connected to Facebook
            if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook)
            {
                let post = SLComposeViewController(forServiceType: SLServiceTypeFacebook)!
                
                post.setInitialText(events[self.selectedEventIndex].name)
                post.add(events[self.selectedEventIndex].image)
                
                self.present(post, animated: true, completion: nil)
                
            }else {
                self.alert(title: "Not Connected", message: "You must be connected on Facebook")
            }
    }
        alert.addAction(actionOne)//Present alert
        self.present(alert, animated: true, completion: nil)
}
    
    func alert(title: String , message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            (result : UIAlertAction) -> Void in
            print("OK")
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
