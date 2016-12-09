//
//  PickerViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

<<<<<<< HEAD
class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
=======
class PickerViewController: UIViewController {
>>>>>>> 89d0025222eb032d967e4b94b0abe49862a3ceca
  
  @IBOutlet weak var pickerView: UIPickerView!
  @IBOutlet weak var cityLabel: UILabel!
  
  let cities = ["New York", "San Francisco", "Berlin", "Hamburg", "Paris"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
<<<<<<< HEAD
    pickerView.delegate = self
    pickerView.dataSource = self
    
    cityLabel.text = cities[0]
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return cities.count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return cities[row];
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    cityLabel.text = cities[row]
=======
>>>>>>> 89d0025222eb032d967e4b94b0abe49862a3ceca
  }
  
}
