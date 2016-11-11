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
    
    cell.friend = friend
    
    cell.friendsTableViewController = self
    
    return cell
  }
  
  func updateMood(friendToUpdate: Friend) {
    // Update mood with helper method
    friendToUpdate.mood = friendToUpdate.getNextMood()
    
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
