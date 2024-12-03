//
//  main.swift
//  W1
//
//  Created by Eduardo Rodrigues on 02.11.24.
//

import Foundation

////////////////////  ------ Day 1 --------- //////////////////////////////////////
/////////////////// Coding Challenge 1 //////////////////////////////////////

//1

let name = "Eduardo"


//2

var age: Int = 46
age = 47

//3

let monthsInYear: Int = 12
var cityName: String = "Berlin"
let nrOfSteps: Int = 1000
var jokeOfTheDay: String = "ich bin Metrosexuell, ich f***e gern in der Ubahn 😜"

/////////////////// Coding Challenge 2 //////////////////////////////////////

//1

let goal: String = "Coding"

//2

var hoursSlept: Int = 7

//3

let montlyEntries: Int = 30
let faveBook: String = "Final Cut"
var todaysTemp: Double = 13.4
var quoteOfTheDay: String = "Learning coding is like a recipe"
var didMeditated: Bool = false


////////////////////  ------ Day 2 --------- //////////////////////////////////////
/////////////////// Coding Challenge 1 //////////////////////////////////////

//1

var fuelLevel = 1000
var speed = 20
var remainingDistance = 1500
var travelTime = 0

//2


let routeFlown: Int = speed * 2
print(routeFlown)

travelTime += 2
print(travelTime)

fuelLevel -= speed * 2
print(fuelLevel)

/////////////////// Coding Challenge 2 //////////////////////////////////////

//1

var mission = (name: "Mission Alpha", crewMembers: 5, distance: 1200.5)

//2

print("Mission Name: \(mission.name)")
print("Crew Members: \(mission.crewMembers)")
print("Distance from destination \(mission.distance)")

mission.name = "Mission Beta"
print("New Mission name \(mission.name)")

//3

let nrCrewMembers: Double = Double(mission.crewMembers)
print("Number of crew members: \(mission.crewMembers)")

let distanceAsInt: Int = Int(mission.distance)
print("Distance from destination \(mission.distance)")


////////////////////  ------ Day 3 --------- //////////////////////////////////////
/////////////////// Coding Challenge 1 //////////////////////////////////////

//1

let firstLetter: Character = "L"
let scientists: Character = "7"
let symbol: Character = "#"
let emoji: Character = "🔬"

//2

let labName: String = "Skynet"
let leadScientist: String = "Doc Brown"
let researchField: String = "Atomic"

//3

let labReport = """
🧪 Lab Report 🧪
-----------------
The Laboratory \(labName) \(emoji) which is lead by the famous scientist Doctor Ernest Brown aka \(leadScientist), is right now working in an \(researchField) project.")
"""

print(labReport)

/////////////////// Coding Challenge 2 //////////////////////////////////////

//1

let project: String = "QuantumAI"
let teamLeader: String = "Dr. Alan Turing"
let description: String = "Research in quatum computing"

let quantumProject: String = ("The \(project) project, which is lead by \(teamLeader) is revolutioning the studies in the \(description).")
print(quantumProject)

//2

//W🕵️💻 👻💻💻t 🥸👻n Inf🐫rm🕵️t👻k🥸r 🕵️b🥸nd💻 b🥸👻m F🥸rn💻🥸h🥸n? – M👻kr🐫ch👻p💻

/*Use .replacing() to replace the following symbols:

"👻" becomes "i"
"🥸" becomes "e"
"🕵️" becomes "a"
"💻" becomes "s"
"🐫" becomes "o"*/

print("W🕵️💻 👻💻💻t 🥸👻n Inf🐫rm🕵️t👻k🥸r 🕵️b🥸nd💻 b🥸👻m F🥸rn💻🥸h🥸n? – M👻kr🐫ch👻p💻".replacing("👻",with:"i").replacing("🥸",with: "e").replacing("🕵️", with:"a").replacing("💻",with: "s").replacing("🐫", with:"o"))


