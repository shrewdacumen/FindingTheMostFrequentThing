//
//  FindingTheMostFrequentThingApp.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 4/16/21.
//

import SwiftUI

@main
struct FindingTheMostFrequentThingApp: App {
  @StateObject var the_result = the_result_strings()
  
    var body: some Scene {
        WindowGroup {
            ContentView(the_result: the_result)
        }
    }
}
