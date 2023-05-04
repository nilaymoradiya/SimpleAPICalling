//
//  RegisterResponseModel.swift
//  XcelTechTask
//
//  Created by Nilay M on 03/05/23.
//

import UIKit
import ObjectMapper

struct RegisterResponseModel: Mappable {
    
    var message : String?
    var code : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        message <- map["message"]
        code <- map["code"]
    }

}
