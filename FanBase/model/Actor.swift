//
//  Actor.swift
//  FanBase
//
//  Created by Prabhat  on 05/06/20.
//  Copyright © 2020 Defenders. All rights reserved.
//

import Foundation

struct Actor {
    private(set) public var name: String
    private(set) public var picture: String
    private(set) public var bio: String
    
    init(name: String, picture: String, bio: String) {
        self.name = name
        self.bio = bio
        self.picture = picture
    }
}
