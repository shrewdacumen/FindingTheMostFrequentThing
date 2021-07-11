//
//  ResultObservable.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 7/11/21.
//

import Foundation


class ResultObservable: Identifiable, ObservableObject {
  
  var id = UUID()
  
  var results: [String]
  
  init(results: [String]) {
    
    self.results = results
  }
}
