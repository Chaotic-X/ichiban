//
//  PersonController.swift
//  ichiban
//
//  Created by Alex Lundquist on 4/15/19.
//  Copyright © 2019 Alex Lundquist. All rights reserved.
//

import UIKit

class PersonController {
    
    static let shared = PersonController()
    private init (){}

    
}

var group: [Person] = []

var alex = Person(name: "Alex Lundquist", course: "iOS25", questionOne: "Osaka, Japan", questionTwo: "App Developement with Swift", questionThree: "🖥🐼🧛🐲", picture: UIImage(named: "alex")!)
var andriy = Person(name: "Andriy Filenko", course: "iOS23", questionOne: "Miami, FL", questionTwo: "Programming iOS 12", questionThree: ":dark_sunglasses::the_horns::bacon::video_game:", picture: UIImage(named: "andriy")!)
var ben = Person(name: "Ben Huggins", course: "iOS24", questionOne: "Cottage in Ontario, Canada", questionTwo: "iOS Apprentice Book", questionThree: ":us::computer::cd::ship:", picture: UIImage(named: "ben")!)
var dallin = Person(name: "Dallin Hughes", course: "UX LaKota", questionOne: "Any muji store, sitting on a muji beanbag", questionTwo: "Gentleman in Moscow by Amor Towles", questionThree: ":evergreen_tree::full_moon_with_face::airplane::wind_blowing_face:", picture: UIImage(named: "dallin")!)
var martha = Person(name: "Martha McNamara", course: "UX LaKota", questionOne: "Mountains, ocean, really amazing hotels", questionTwo: "The Dark Lake by Sarah Bailey and High Performance Habits by Brendon Burchard", questionThree: ":black_heart::black_heart::black_heart::black_heart:", picture: UIImage(named: "martha")!)
var sammy = Person(name: "Sammy Smith", course: "UX LaKota", questionOne: "By the pool, laying in the sun, reading a book", questionTwo: "Everything’s Trash, But It’s Okay by Phoebe Robinson", questionThree: ":mermaid::pencil::sparkles::mountain:", picture: UIImage(named: "sammy")!)
