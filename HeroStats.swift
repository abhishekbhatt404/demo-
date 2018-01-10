//
//  HeroStats.swift
//  demo@2
//
//  Created by abhishek bhatt on 09/01/18.
//  Copyright © 2018 abhishek bhatt. All rights reserved.
//

import Foundation

// need to change keys !!! # localized_name <<<<
struct HeroStats: Decodable {
    let localized_name: String
    let attack_type: String
    let legs:Int
    let primary_attr: String
    let img: String
    
}
