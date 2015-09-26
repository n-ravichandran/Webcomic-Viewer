//
//  ComicStrip.swift
//  Webcomic
//
//  Created by Niranjan Ravichandran on 22/09/15.
//  Copyright © 2015 Adavers. All rights reserved.
//

import Foundation

struct ComicStrip {
    let title: String?
    let imgURL: NSURL?
    let link: NSURL?
    let transcript: String?
    let year: String?
    
    init(jsonResponse: NSDictionary){
        
        title = jsonResponse["title"] as? String
        imgURL = NSURL(string: jsonResponse["img"] as! String)
        link = NSURL(string: jsonResponse["link"] as! String)
        transcript = jsonResponse["transcript"] as? String
        year = jsonResponse["year"] as? String
        
    }
}