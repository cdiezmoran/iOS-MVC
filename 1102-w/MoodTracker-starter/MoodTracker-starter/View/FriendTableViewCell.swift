//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

protocol UpdateMoodDelegate: class {
  func updateMood(friendToUpdate: Friend)
}

class FriendTableViewCell: UITableViewCell {
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var moodDescriptionLabel: UILabel!
  @IBOutlet weak var moodButton: UIButton!
  
  weak var delegate: UpdateMoodDelegate?
  
  var friend: Friend? { // stores the friend that is displayed in this cell
    didSet {
      nameLabel.text = friend?.name
      moodDescriptionLabel.text = friend?.getDescription()
      moodButton.setTitle(friend?.mood.rawValue, for: .normal)
    }
  }
  
  @IBAction func moodButtonPressed(_ sender: UIButton) {
    delegate?.updateMood(friendToUpdate: friend!)
  }
  
}
