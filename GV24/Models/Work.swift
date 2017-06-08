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
    var history:[String:Any]?
    var stakeholders:[String:Any]?
    var info:Info?
    var process: Process?
    var workTime: WorkTime?
    
    override init(json:JSON) {
        super.init()
        self.id = json["_id"].string
        self.history = json["history"].dictionary
        self.stakeholders = json["stakeholders"].dictionary
        self.info = Info(json: json["info"])
        self.process = Process(json: json["process"])
        self.workTime = WorkTime(json: json["info"]["time"])
    }
}

class Process: AppModel {
    var id: String?
    var name: String?
    
    override init(json: JSON) {
        super.init()
        self.id = json["_id"].string
        self.name = json["name"].string
    }
}

class WorkTime: AppModel {
    var startAt: String?
    var endAt: String?
    var hour: Int?
    
    override init(json: JSON) {
        super.init()
        
        self.startAt = json["startAt"].string
        self.endAt = json["endAt"].string
        self.hour = json["hour"].int
    }
    
}
