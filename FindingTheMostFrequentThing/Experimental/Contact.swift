//
//  Contact.swift
//  FindingTheMostFrequentThing
//
//  Created by sungwook on 4/16/21.
//

import Foundation

struct Contact: Identifiable, FavoredFood {
  
  let id = UUID()
  let name: String
  let favorite_food: String
}

let contacts = [
  Contact(name: "Rob",     favorite_food: "curry"),
  Contact(name: "Richard", favorite_food: "pizza"),
  Contact(name: "Rachel",  favorite_food: "kimchi"),
  Contact(name: "Loren",   favorite_food: "pizza"),
  Contact(name: "Mary",    favorite_food: "pizza"),
  Contact(name: "Susie",   favorite_food: "curry"),
  Contact(name: "John",    favorite_food: "pizza"),
  Contact(name: "Peter",    favorite_food: "pizza"),
  Contact(name: "Carlson",    favorite_food: "pizza"),
  Contact(name: "Bob",     favorite_food: "curry"),
  Contact(name: "Kawasaki",   favorite_food: "pizza"),
  Contact(name: "Ellon",    favorite_food: "pizza"),
  Contact(name: "Paul",   favorite_food: "curry"),
  Contact(name: "Sung",    favorite_food: "pizza"),
  Contact(name: "Habbakuk",    favorite_food: "pizza"),
  Contact(name: "Jonny",    favorite_food: "pizza"),
  Contact(name: "Tim",     favorite_food: "curry"),
  Contact(name: "Scott",     favorite_food: "curry"),
  Contact(name: "Tim Cook",    favorite_food: "pizza"),
  Contact(name: "Ellon Musk",     favorite_food: "curry"),
  Contact(name: "Steve Jobs",   favorite_food: "pizza"),
  Contact(name: "Jonny Depp",    favorite_food: "pizza"),
  Contact(name: "Kingston",   favorite_food: "curry"),
  Contact(name: "Micky",    favorite_food: "pizza"),
  Contact(name: "Starbucks",    favorite_food: "pizza"),
  Contact(name: "Two Bucks",    favorite_food: "pizza"),
  Contact(name: "Few dollars more",     favorite_food: "curry"),
  Contact(name: "A great whale",     favorite_food: "curry"),
  
]
