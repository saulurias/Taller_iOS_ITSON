//
//  Event.swift
//  Taller
//
//  Created by saul ulises urias guzmàn on 29/10/17.
//  Copyright © 2017 saul ulises urias guzmàn. All rights reserved.
//

import Foundation
import UIKit

struct Event {
    let name : String
    let description : String
    let date : String
    let location : String
    let image : UIImage
}

let events : [Event] = [
    Event(name: "First Event", description: "Event to have fun on the table", date: "12 Oct 2017", location: "Miramar Beach, Guaymas, Sonora.", image: #imageLiteral(resourceName: "Event1")),
    Event(name: "Second Event", description: "Event to drink beer all nigth", date: "15 Oct 2017", location: "ITSON University, Guaymas, Sonora.", image: #imageLiteral(resourceName: "Event2")),
    Event(name: "Third Event", description: "Evento to swim with sharks", date: "18 Oct 2017", location: "San Carlos Beach, Guaymas, Sonora.", image: #imageLiteral(resourceName: "Event3")),
    Event(name: "Fourth Event", description: "Evento to go to the beach alone", date: "22 Oct 2017", location: "Miramar Beach, Guaymas, Sonora.", image: #imageLiteral(resourceName: "Event4")),
    Event(name: "Fifth Event", description: "Event to develop nice iOS Apps", date: "29 Oct 2017", location: "ITSON University, Guaymas, Sonora.", image: #imageLiteral(resourceName: "Event5"))
]
