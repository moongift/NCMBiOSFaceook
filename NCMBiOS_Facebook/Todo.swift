//
//  Todo.swift
//  NCMBiOS_Facebook
//
//  Created by naokits on 7/6/15.
//  Copyright (c) 2015 Naoki Tsutsui. All rights reserved.
//

import UIKit

/// Todoクラス
@objc(Todo) // <-- この宣言をしないと、ハングアップする
class Todo: NCMBObject, NCMBSubclassing {

    /// タイトル
    var title: String! {
        get {
            return objectForKey("title") as! String
        }
        set {
            setObject(newValue, forKey: "title")
        }
    }
    
    // ------------------------------------------------------------------------
    // MARK: NCMBSubclassing Protocol
    // ------------------------------------------------------------------------

    /// mobile backend上のクラス名を返却する。
    ///
    /// :returns: サブクラスのデータストア上でのクラス名
    static func ncmbClassName() -> String! {
        return "Todo"
    }
}
