//
//  ViewController.swift
//  SomeTableThingForClass
//
//  Created by Tendaishe Gwini on 4/30/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "List of whatever"
        self.tableView.dataSource = whateverdataSource
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }

    //MARK: Properties
    
    private var whateverdataSource = WhateverDataSource()
    
    //MARK: Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let presentedController = DetailViewController()
        let item = whateverdataSource.data[indexPath.row]
        presentedController.theInfo = "\(item.name) - \(item.type) - \(item.date) - Cool: \(item.coolFactor)"
        navigationController?.pushViewController(presentedController, animated: true)
    }
    
    
}

