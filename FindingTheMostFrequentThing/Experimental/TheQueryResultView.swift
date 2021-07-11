//
//  TheQueryResultView.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 7/11/21.
//

import SwiftUI

struct TheQueryResultView: View {
  
  @Binding var result: ResultObservable
  @Environment(\.colorScheme) var colorScheme
  
  var body: some View {
    
    if #available(iOS 15.0, *) {
      
      
      ScrollView {
        
        VStack {
          
          ForEach(contacts) { contact in
            
            
            HStack {
              
              Text(contact.name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
                .padding(.bottom, 3)
              
              Spacer()
              
              Text(contact.favorite_food)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.trailing, 30)
                .padding(.bottom, 5)
              
            }
            
          }
        }
        
        
        
        Divider()
          .padding(.bottom, 10)
        
      }
      .safeAreaInset(edge: .bottom, spacing: 0) {
        
        VStack {
          
          Divider()
            .padding(.bottom, 10)
          
          ForEach(result.results, id: \.self) { each_result in
            
            //          let bound_string = Binding(get: {each_result}, set: {_ in})
            //          MultilineTextView(text: bound_string)
            
            
            Text(each_result)
              .lineLimit(3)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.leading, 30)
              .padding(.bottom, 10)
            
          }
          
        }
        .background(colorScheme == . dark ? Color.red : Color.yellow)
        
      }
      
      
    } else {
      
      
      ScrollView {
        
        VStack {
          
          ForEach(contacts) { contact in
            
            
            HStack {
              
              Text(contact.name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
                .padding(.bottom, 3)
              
              Spacer()
              
              Text(contact.favorite_food)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.trailing, 30)
                .padding(.bottom, 5)
              
            }
            
          }
        }
        
        
        
        Divider()
          .padding(.bottom, 10)
        
        //        MultilineTextView(text: "ldkjflskjdfkjdlskjfdklsjf")
        
        
        VStack {
          ForEach(result.results, id: \.self) { each_result in
            
            //          let bound_string = Binding(get: {each_result}, set: {_ in})
            //          MultilineTextView(text: bound_string)
            
            
            Text(each_result)
              .lineLimit(3)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.leading, 30)
              .padding(.bottom, 10)
            
          }
          
        }
        
      } /// THE END OF ScrollView
      
      
    }
    
    
  } /// THE END OF body
  
  
}




struct TheQueryResultView_Previews: PreviewProvider {
  
  static var previews: some View {
    
    Group {
      TheQueryResultView(result: Binding(get: { the_result_strings() }, set: {_ in }))
      
      TheQueryResultView(result: Binding(get: { the_result_strings() }, set: {_ in }))
        .preferredColorScheme(.dark)
      
    }
  }
}
