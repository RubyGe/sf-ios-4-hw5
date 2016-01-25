//
//  AddItemViewController.swift
//  iOS4-HW5-Delegation
//
//  Created by Kathryn Rotondo on 1/20/16.
//  Copyright © 2016 Kathryn Rotondo. All rights reserved.
//

import UIKit

protocol EventSaver {
    func saveData (event:String)
}

class AddItemViewController: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var delegate:EventSaver?
    
    @IBAction func saveButtonPressed(sender: AnyObject) {
        if let itemToBeAdded = itemTextField.text {
            delegate?.saveData(itemToBeAdded)}
       navigationController?.popViewControllerAnimated(true)
    }
}
