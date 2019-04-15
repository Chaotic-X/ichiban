//
//  Person.swift
//  ichiban
//
//  Created by Alex Lundquist on 4/15/19.
//  Copyright © 2019 Alex Lundquist. All rights reserved.
//

import UIKit


class Person {
    
    let name: String
    let course: String
    let questionOne: String
    let questionTwo: String
    let questionThree: String
    let picture: UIImage
    
    init(name: String, course: String, questionOne: String, questionTwo: String, questionThree: String, picture: UIImage){
   
    self.name = name
    self.course = course
    self.questionOne = questionOne
    self.questionTwo = questionTwo
    self.questionThree = questionThree
    self.picture = picture
    }
}
