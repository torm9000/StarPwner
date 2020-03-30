//
//  DetailViewController.swift
//  StarPwner
//
//  Created by Thomas Kiely on 3/29/20.
//  Copyright © 2020 Thomas Kiely. All rights reserved.
//

import Foundation
import UIKit
class DetailViewController: UIViewController {
    @IBOutlet var nameField: UITextField!
    @IBOutlet var massField: UITextField!
    @IBOutlet var sizeField: UITextField!
    @IBOutlet var dateLabel: UILabel!
    
    
    var item: Item!
     override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    //when i try to load data in my text boxes I am getting
    //Thread 1: Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value
    //nameField.text = item.name
    //massField.text = "\(item.mass)"
    //sizeField.text = "\(item.size)"
    //dateLabel.text = "\(item.dateCreated)"
     }
}
