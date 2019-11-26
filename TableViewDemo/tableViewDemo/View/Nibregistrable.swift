//
//  Nibregistrable.swift
//  scrollviewDemo
//
//  Created by 入江真礼 on 2019/11/25.
//  Copyright © 2019 入江真礼. All rights reserved.
//

import UIKit

protocol NibRegistrable {
    
    /// TableViewにNibを登録する
    ///
    /// - Parameter tableView: 登録先のTableView
    static func register(tableView: UITableView)
}

extension NibRegistrable where Self: UITableViewCell {
    
    static func register(tableView: UITableView) {
        tableView.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
}
