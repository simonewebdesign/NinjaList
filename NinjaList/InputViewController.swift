//
//  InputViewController.swift
//  NinjaList
//
//  Created by Mockingjay on 28/02/2016.
//  Copyright © 2016 umbrellacorp. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    @IBOutlet weak var txtInputField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // to focus the input field and open the keyboard
        txtInputField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
