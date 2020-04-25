//
//  DetailViewController.swift
//  StarPwner
//
//  Created by Thomas Kiely on 3/29/20.
//  Copyright © 2020 Thomas Kiely. All rights reserved.
//

import Foundation
import UIKit
class DetailViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    @IBOutlet var nameField: UITextField!
    @IBOutlet var massField: UITextField!
    @IBOutlet var sizeField: UITextField!
    @IBOutlet var dateLabel: UILabel!
    
    
    var item: Item!{
     didSet {
    navigationItem.title = item.name
     }
    }
     override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    //when i try to load data in my text boxes I am getting
    //Thread 1: Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value
    nameField.text = item.name
    massField.text = "\(item.mass)"
    sizeField.text = "\(item.size)"
    //dateLabel.text = "\(item.dateCreated)"
    dateLabel.text = dateFormatter.string(from: item.dateCreated)
     }
    
    let dateFormatter: DateFormatter = {
     let formatter = DateFormatter()
     formatter.dateStyle = .medium
     formatter.timeStyle = .none
     return formatter
    }()
    
    override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    view.endEditing(true)
     // "Save" changes to item
    item.name = nameField.text ?? ""
        
    var sizeString = sizeField.text ?? ""
    item.size = Int(sizeString) ?? 1
        
    var massString = massField.text ?? ""
    item.mass = Int(massString) ?? 1
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     textField.resignFirstResponder()
     return true
    }
}
