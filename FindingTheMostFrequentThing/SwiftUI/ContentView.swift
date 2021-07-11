//
//  ContentView.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 4/16/21.
//

import SwiftUI

struct ContentView: View {
  
  @State var the_result: ResultObservable
  
  var body: some View {
    
    /// just printing the log
    TheQueryResultView(result: $the_result)
    //        .onAppear {
    //
    //          the_result = the_result_strings()
    //        }
    
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(the_result: the_result_strings())
    }
}
