//
//  File.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 4/16/21.
//

import Foundation


/// it is concise and readible but not in good performance.
/// the performance: o(n(1+log(n))),or o(n(1+ln(n)) in the better mathematical expression.  ln() is accurate, not log() which is being used by Computer Scientists.
func find_the_favoriteFood_having_the_highest_frequency_v1<T: FavoredFood>(fromContacts contacts: [T]) -> (favorite_food: T.TargetSearch, frequency: Int) {
  
  let crossReference = Dictionary(grouping: contacts, by: { $0.favorite_food })
  
  let duplicates = crossReference.filter { $0.1.count > 1 }
    .sorted { $0.1.count < $1.1.count }
  
  return (favorite_food: duplicates.last!.key, frequency: duplicates.last!.value.count)
}

/// A better in performance
/// it is just o(2N)
func find_the_favoriteFood_having_the_highest_frequency_v2<T: FavoredFood>(fromContacts contacts: [T]) -> (favorite_food: T.TargetSearch, frequency: Int) {
  
  let food_list = contacts.map { $0.favorite_food }
  
  /// making counts Dictionary to prepare the finding.
  var counts: [T.TargetSearch: Int] = [:]

  for item in food_list {
    
    //      counts[item] = (counts[item] ?? 0) + 1
    counts[item, default: 0] += 1
  }
  
  /// get the job done
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


