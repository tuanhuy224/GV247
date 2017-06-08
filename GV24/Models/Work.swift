//
//  Work.swift
//  GV24
//
//  Created by HuyNguyen on 5/27/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation
import SwiftyJSON

class Work: AppModel {
    var id:String?
    var stakeholders:Stakeholders?
    var info:Info?
    var dist:Dist?
    var history:History?
    override init(json:JSON) {
        super.init()
        self.id = json["_id"].string
        self.stakeholders = Stakeholders(json: json["stakeholders"])
        self.info = Info(json: json["info"])
        self.dist = Dist(json: json["dist"])
        self.history = History(json: json["history"])
    }
}

