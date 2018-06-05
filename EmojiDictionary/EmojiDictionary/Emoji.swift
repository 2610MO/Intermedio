//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Luis Servicio on 30/05/18.
//  Copyright © 2018 Luis Morelos. All rights reserved.
//

import UIKit

class Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String,
            usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
        }
    }

