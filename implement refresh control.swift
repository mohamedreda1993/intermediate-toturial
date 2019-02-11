//
//  TableViewController.swift
//  refreshcontrlo
//
//  Created by mohamed on 2/11/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var arr:[Int]=[1,2,3]
    var refresher:UIRefreshControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        refresher=UIRefreshControl()
        refresher.attributedTitle=NSAttributedString(string: "pull to refresh")
        refresher.addTarget(self, action: #selector(TableViewController.populate), for: UIControl.Event.valueChanged)
        tableView.addSubview(refresher)

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(arr[indexPath.row])
        // Configure the cell...

        return cell
    }
    @objc func populate(){
        for i in 1...1000{
            arr.append(i)
        }
        tableView.reloadData()
        refresher.endRefreshing()
        
    }
 


}
