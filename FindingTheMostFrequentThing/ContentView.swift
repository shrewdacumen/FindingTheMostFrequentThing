//
//  ContentView.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 4/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
      /// just printing the log
      the_query()
      
      /// the SwiftUI here is doing nothing.
      return Text("FindingTheMostFrequentThing is here!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
