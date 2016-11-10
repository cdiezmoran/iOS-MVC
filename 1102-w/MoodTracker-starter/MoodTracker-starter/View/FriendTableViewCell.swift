//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var moodDescriptionLabel: UILabel!
  @IBOutlet weak var moodButton: UIButton!
  
  var friend: Friend? // stores the friend that is displayed in this cell
  
  @IBAction func moodButtonPressed(_ sender: UIButton) {
    print(#line, #function)
  }


  

  
  
}
