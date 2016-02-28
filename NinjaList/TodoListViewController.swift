//
//  ViewController.swift
//  NinjaList
//
//  Created by Mockingjay on 01/01/2016.
//  Copyright © 2016 umbrellacorp. All rights reserved.
//

import UIKit

class TodoListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var tasks:Array<String>!
    var selectedTask:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        tasks = ["first task", "second task", "third task"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddPressed(sender: AnyObject) {
    }
    
    // MARK: UITableViewDatasource/ UITableViewDelegate
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as? CustomTableViewCell
        
        if cell == nil {
            tableView.registerNib(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "cell")
            cell = tableView.dequeueReusableCellWithIdentifier("cell") as? CustomTableViewCell
        }
        cell!.label.text = tasks[indexPath.row]
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedTask = tasks[indexPath.row]
        performSegueWithIdentifier("modifyItem", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "modifyItem" {
            let vc = segue.destinationViewController as! InputViewController
            vc.taskName = selectedTask
        }
        else if segue.identifier == "addItem" {
            let vc = segue.destinationViewController as! InputViewController
            vc.taskName = ""
        }
    }
}

