//
//  TheResultStrings.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 7/11/21.
//

import Foundation





func the_result_strings() -> ResultObservable {
  
  let crossReference_v1 = Dictionary(grouping: contacts, by: { $0.favorite_food })
  
  let crossReference_v2 = contacts.reduce(into: [String : [Contact]]()) {
    
    $0[$1.favorite_food, default: []].append($1)
    
    /// The following won't append but reset to the new [$1]
    //  $0[$1.favorite_food, default: []] = [$1]
  }
  
  print("""
crossReference_v1 = \(crossReference_v1)

  and crossReference_v2 = \(crossReference_v2)

""")
  
  let duplicates_v1 = crossReference_v1.filter { $0.1.count > 1 }
    .sorted { $0.1.count < $1.1.count }
  
  print("all duplicates = \(duplicates_v1)")
  
  print("")
  print("the lowest duplicates \(duplicates_v1.first!.value.count) = \(duplicates_v1.first!)")
  
  print("the highest duplicates \(duplicates_v1.last!.value.count) = \(duplicates_v1.last!)")
  
  print("")
  
  let the_answerPair_to_the_food_having_highest_freq_v1 = find_the_favoriteFood_having_the_highest_frequency_v1(fromContacts: contacts)
  
  
  var result = [String]()

  print("The favorite food having the highest frequency v1 = \(the_answerPair_to_the_food_having_highest_freq_v1.favorite_food) and its frequency = \(the_answerPair_to_the_food_having_highest_freq_v1.frequency)")
  result.append("The favorite food having the highest frequency v1 = \(the_answerPair_to_the_food_having_highest_freq_v1.favorite_food) and its frequency = \(the_answerPair_to_the_food_having_highest_freq_v1.frequency)")
  
  let the_answerPair_to_the_food_having_highest_freq_v2 = find_the_favoriteFood_having_the_highest_frequency_v2(fromContacts: contacts)

  print("The favorite food having the highest frequency v2 = \(the_answerPair_to_the_food_having_highest_freq_v2.favorite_food) and its frequency = \(the_answerPair_to_the_food_having_highest_freq_v2.frequency)")
  result.append("The favorite food having the highest frequency v2 = \(the_answerPair_to_the_food_having_highest_freq_v2.favorite_food) and its frequency = \(the_answerPair_to_the_food_having_highest_freq_v2.frequency)")
  
  
  let the_max_value_by_key_path = getting_max(fromContacts: contacts, keyPath: \.favorite_food)
  
  print("The max value by key path = \(the_max_value_by_key_path ?? "Not Found")")
  result.append("The max value by key path = \(the_max_value_by_key_path ?? "Not Found")")
  
  return ResultObservable(results: result)
}
