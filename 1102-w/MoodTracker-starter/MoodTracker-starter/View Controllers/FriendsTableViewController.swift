//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
  
  // MARK: Member variables
  
  var friendArray = [
    Friend(name: "Pam", mood: .happy),
    Friend(name: "Peps", mood: .angry),
    Friend(name: "Galder", mood: .medium),
    Friend(name: "Amaya", mood: .happy)
    ] {
    didSet {
      tableView.reloadData()
    }
  }
  
  // MARK: View Controller Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // MARK: Table view functions
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return friendArray.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
    
    let friend = friendArray[indexPath.row]
    
    // Populate each cell with friend's data
    cell.nameLabel.text = friend.name
    cell.moodDescriptionLabel.text = Friend.getDescription(mood: friend.mood)
    cell.moodButton.setTitle(friend.mood.rawValue, for: .normal)
    
    // Add target to the mood button to trigger updateMood function
    cell.moodButton.addTarget(self, action: #selector(FriendsTableViewController.updateMood), for: .touchUpInside)
    
    // Set button's tag to the index for later reference
    cell.moodButton.tag = indexPath.row
    
    return cell
  }
  
  func updateMood(sender: UIButton) {
    let friendToUpdate = friendArray[sender.tag]
    
    // Get current mood.
    let mood = friendToUpdate.mood
    var nextMood: Mood!
    
    // Get next mood based on the previous one.
    switch mood {
    case .happy:
      nextMood = Mood.medium
    case .medium:
      nextMood = Mood.angry
    case .angry:
      nextMood = Mood.happy
    }
    
    //Update the model.
    friendToUpdate.mood = nextMood
    
    //update the view.
    tableView.reloadData()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "addFriend" {
      let addFriendViewController = segue.destination as! AddFriendViewController
      addFriendViewController.friendsTableViewController = self
    }
  }

}
