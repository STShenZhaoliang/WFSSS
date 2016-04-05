//
//  ViewController.swift
//  PresentationLayer
//
//  Created by 沈兆良 on 16/4/5.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit
import PersistenceLayer
import BusinessLogicLayer
//import YUTableViewSwift


class ViewController: UIViewController {

    var array = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.redColor()
//        note.date = NSDate()

        let bl = NoteBL()
        print(bl.findAll())

        for note in bl.findAll() {
            let note1 = note as! Note
            print(note1.content)
        }
//        print(bl)



//        YUTableView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

