//
//  Pictures.swift
//  Project1
//
//  Created by cassia franco on 30/08/21.
//

import UIKit

class Pictures: NSObject, Codable{
    var image: String
    var caption: String
    
    init(image: String, caption: String) {
        self.image = image
        self.caption = caption
    }
}
