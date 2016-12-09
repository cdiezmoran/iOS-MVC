//
//  TextFieldViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

<<<<<<< HEAD
class TextFieldViewController: UIViewController, UITextFieldDelegate {
=======
class TextFieldViewController: UIViewController {
>>>>>>> 89d0025222eb032d967e4b94b0abe49862a3ceca
  
  @IBOutlet weak var textField: UITextField!
  
  override func viewDidLoad() {
<<<<<<< HEAD
    super.viewDidLoad()
    textField.delegate = self
  }
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    textField.autocapitalizationType = .allCharacters
  }
=======
    super.viewDidLoad()    
  }
  
>>>>>>> 89d0025222eb032d967e4b94b0abe49862a3ceca
  
}
