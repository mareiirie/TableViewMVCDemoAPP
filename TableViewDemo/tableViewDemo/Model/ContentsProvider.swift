//
//  ContentsProvider.swift
//  scrollviewDemo
//
//  Created by 入江真礼 on 2019/11/24.
//  Copyright © 2019 入江真礼. All rights reserved.
//

import UIKit

//DateSource関連
class ContentsProvider: NSObject {
    
    var contentsText = [String]()
    
    func appendContents(appendlist: [String]){
        for contentsElement in appendlist{
            contentsText.append(contentsElement)
        }
    }
}

extension ContentsProvider: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentsText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contentsCell = tableView.dequeueReusableCell(
            withIdentifier: ContentsCell.identifier,
            for: indexPath
            ) as! ContentsCell
        setContents(contents: contentsText[indexPath.row], cell: contentsCell)
        return contentsCell
    }
}

private extension ContentsProvider {
    func setContents(contents: String?, cell: ContentsCell){
        guard let contents = contents else{
            return
        }
        cell.labelText.text = contents
    }
}
