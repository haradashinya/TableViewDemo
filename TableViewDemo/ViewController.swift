//
//  ViewController.swift
//  TableViewDemo
//
//  Created by HARADASHINYA on 2014/10/13.
//  Copyright (c) 2014年 HARADASHINYA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
@IBOutlet var tableView: UITableView!
    
    let fruitsList:[String] = ["Apple","Orange","Mango"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        var nib:UINib = UINib(nibName: "CustomCell", bundle: nil)
        
        self.tableView.registerNib(nib, forCellReuseIdentifier: "Cell")
    }
    
    
    func  numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
     func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    func  tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsList.count ;
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        cell.textLabel?.text = fruitsList[indexPath.row]
        return cell
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

