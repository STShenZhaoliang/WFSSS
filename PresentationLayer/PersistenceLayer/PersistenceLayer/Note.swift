//
//  Note.swift
//  MyNotes
//
//  Created by 沈兆良 on 16/4/5.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import Foundation

public class Note {
    public var date : NSDate
    public var content : String

    public init() {
        self.date = NSDate()
        self.content = ""
    }

    public init(date: NSDate, content: String) {
        self.date = date
        self.content = content
    }
}