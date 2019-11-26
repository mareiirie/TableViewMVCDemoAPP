//
//  ContentsList.swift
//  scrollviewDemo
//
//  Created by 入江真礼 on 2019/11/25.
//  Copyright © 2019 入江真礼. All rights reserved.
//

import Foundation


//今回はエラーなど起きようがないが、一応エラーハンドリングを想定しサクセスした場合のdelegateを用意
protocol ListDelegate{
    func addSucceeded(contentslist: [String])
}

//コンテンツの要素を生成し、要素を生成したらコントローラークラスへ戻す
class ContentsList {
    var contentsList = [String]()
    var listdelegate: ListDelegate?

//今回は適当に配列を用意
    func addcontentsList(){
        contentsList = ["１セル","２セル","３セル","４セル","５セル","６セル","７セル","８セル","９セル","１０セル","１１セル","１２セル","１３セル","１４セル","１５セル","１６セル","１７セル","１８セル","１９セル","２０セル","２１セル","２２セル","２３セル","２４セル","２５セル","２６セル","２７セル","２８セル","２９セル","３０セル","最後のセル"]
        self.listdelegate?.addSucceeded(contentslist: contentsList)
    }
}
