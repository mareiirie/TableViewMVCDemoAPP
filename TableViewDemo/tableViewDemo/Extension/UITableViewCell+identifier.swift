//
//  UITableViewCell+identifier.swift
//  scrollviewDemo
//
//  Created by 入江真礼 on 2019/11/25.
//  Copyright © 2019 入江真礼. All rights reserved.
//

import UIKit

//identifierにクラス名を返すextension

extension UITableViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
}
