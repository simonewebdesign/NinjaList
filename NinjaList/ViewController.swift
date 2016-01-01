//
//  ViewController.swift
//  NinjaList
//
//  Created by Mockingjay on 01/01/2016.
//  Copyright © 2016 umbrellacorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var tasks:Array<String>!

    override func viewDidLoad() {
        super.viewDidLoad()
        tasks = ["first task", "second task", "third task"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")!
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

