//
//  WhateverDataSource.swift
//  SomeTableThingForClass
//
//  Created by Tendaishe Gwini on 4/30/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class WhateverDataSource: NSObject, UITableViewDataSource {
    
    //MARK: Properties
    
    var data: [WhateverModel] = [
        WhateverModel(name: "iPad", type: "device", date: "2018", coolFactor: 7),
        WhateverModel(name: "iPhone", type: "mobile device", date: "2016", coolFactor: 7),
        WhateverModel(name: "Macbook", type: "Laptop", date: "2014", coolFactor: 9),
        WhateverModel(name: "Watch", type: "Wearable", date: "2020", coolFactor: 10)
    ]
    
    //MARK: Methods
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Where are my cells")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].name
        return cell
    }
    

}
