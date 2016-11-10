//
//  Friend.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 04/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

enum Mood: String {
    case happy = "😁"
    case medium = "😐"
    case angry = "😤"
}

class Friend {
  
  let name: String
  var mood: Mood
  
  init(name: String, mood: Mood){
    self.name = name
    self.mood = mood
  }
    
    static func getDescription(mood: Mood) -> String {
        switch mood {
        case .happy:
            return "Great day!"
        case .medium:
            return "Meh."
        case .angry:
            return "Get off my lawn!!!"
        }
    }
  
}
