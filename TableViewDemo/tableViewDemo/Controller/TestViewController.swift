//
//  ViewController.swift
//  scrollviewDemo
//
//  Created by 入江真礼 on 2019/11/24.
//  Copyright © 2019 入江真礼. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    private let contentsProvider = ContentsProvider()
    private let contentsList = ContentsList()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        ContentsCell.register(tableView: tableView)
        tableView.dataSource = contentsProvider
        contentsList.listdelegate = self
        contentsList.addcontentsList()
    }
}

extension TestViewController: ListDelegate {
    func addSucceeded(contentslist: [String]) {
        contentsProvider.appendContents(appendlist: contentslist)
        tableView.reloadData()
    }
}



