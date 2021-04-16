//
//  protocol FavoredFood.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 4/16/21.
//

import Foundation

protocol FavoredFood {
  
  associatedtype TargetSearch: Hashable
  
  var favorite_food: TargetSearch { get }
}
