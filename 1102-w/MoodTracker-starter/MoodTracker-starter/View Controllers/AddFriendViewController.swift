//
//  AddFriendViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 09/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

protocol AddFriendDelegate: class {
  func addFriend(friend: Friend)
}

class AddFriendViewController: UIViewController {
  
  // MARK: Outlets
  
  @IBOutlet weak var friendNameField: UITextField!
  @IBOutlet weak var moodSelector: UISegmentedControl!
  
  
  //MARK: Properties
  
  weak var delegate: AddFriendDelegate?
  
  
  // MARK: View Controller Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  // MARK: Actions
  
  @IBAction func saveButtonPressed(_ sender: AnyObject) {
    let name = friendNameField.text
    let mood: Mood!
    
    if name == nil || name == "" {
      return
    }
    
    switch moodSelector.selectedSegmentIndex {
    case 0: mood = .happy
    case 1: mood = .medium
    case 2: mood = .angry
    default: mood = .happy
    }
    
    let newFriend = Friend(name: name!, mood: mood)
    
    delegate?.addFriend(friend: newFriend)
    
    dismissViewController()
  }
  
  @IBAction func cancelButtonPressed(_ sender: AnyObject) {
    dismissViewController()
  }
  
  
  // MARK: Helpers
  
  func dismissViewController() {
    presentingViewController?.dismiss(animated: true)
  }
  
}
