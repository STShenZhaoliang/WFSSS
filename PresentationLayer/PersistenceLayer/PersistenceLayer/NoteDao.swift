
//
//  NoteDao.swift
//  MyNotes
//
//  Created by 沈兆良 on 16/4/5.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import Foundation


public class NoteDao {
    var listData: NSMutableArray!
    public static let sharedInstance : NoteDao = {

        let instance = NoteDao()

        // 添加一些测试数据
        let dateFormatter : NSDateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

        let date1: NSDate = dateFormatter.dateFromString("2016-01-01 16:01:03")!
        let note1: Note = Note(date: date1, content: "Welcome to MyNote.")

        let date2: NSDate = dateFormatter.dateFromString("2016-01-02 8:01:03")!
        let note2: Note = Note(date: date2, content: "欢迎使用MyNote。")

        instance.listData = NSMutableArray()
        instance.listData.addObject(note1)
        instance.listData.addObject(note2)

        return instance
    }()

    // 插入Note方法
    public func create(model: Note) -> Int {
        self.listData.addObject(model)
        return 1
    }

    // 删除Note方法
    public func remove(model: Note) -> Int {
        for note in self.listData {
            let note2 = note as! Note
            if model.date == note2.date {
                self.listData.removeObject(note2)
                break
            }
        }
        return 1
    }

    //修改Note方法
    public func modify(model: Note) -> Int {
        for note in self.listData {
            let note2 = note as! Note
            if note2.date == model.date {
                note2.content = model.content
                break
            }
        }
        return 1
    }

    //查询所有数据方法
    public func findAll() -> NSMutableArray {
        return self.listData
    }

    //修改Note方法
    public func findById(model: Note) -> Note? {
        for note in self.listData {
            let note2 = note as! Note
            //比较日期主键是否相等
            if note2.date == model.date {
                return note2
            }
        }
        return nil
    }

}

