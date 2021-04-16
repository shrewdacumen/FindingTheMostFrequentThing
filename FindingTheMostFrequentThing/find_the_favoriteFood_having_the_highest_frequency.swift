//
//  File.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 4/16/21.
//

import Foundation



func find_the_favoriteFood_having_the_highest_frequency_v1<T: FavoredFood>(fromContacts contacts: [T]) -> (favorite_food: T.TargetSearch, frequency: Int) {
  
  let crossReference = Dictionary(grouping: contacts, by: { $0.favorite_food })
  
  let duplicates = crossReference.filter { $0.1.count > 1 }
    .sorted { $0.1.count < $1.1.count }
  
  return (favorite_food: duplicates.last!.key, frequency: duplicates.last!.value.count)
}


func find_the_favoriteFood_having_the_highest_frequency_v2<T: FavoredFood>(fromContacts contacts: [T]) -> (favorite_food: T.TargetSearch, frequency: Int) {
  
  let food_list = contacts.map { $0.favorite_food }
  
  var counts: [T.TargetSearch: Int] = [:]

  for item in food_list {
    
    //      counts[item] = (counts[item] ?? 0) + 1
    counts[item, default: 0] += 1
  }
  
  var the_max_count = 0
  var key_found: T.TargetSearch?
  var value_found: Int?
  for (key, value) in counts {
    
    if value > the_max_count {
      key_found = key
      value_found = value
      the_max_count = value
    }
  }
  
  guard key_found != nil else {
    
    fatalError()
  }
  
  return (favorite_food: key_found!, frequency: value_found!)
}


