//
//  Exercice.swift
//  WorkoutApp
//
//  Created by ali on 10/20/22.
//

import Foundation

var exercises: [Exercise] =
[
    Exercise( id: 1, timeline: .Today, name: .FrontSquats, type: .Flexibility, intensity: .I2),
    Exercise( id: 2, timeline: .Today, name: .FrontSquats, type: .Cardio, intensity: .I1),
    Exercise( id: 3, timeline: .Today, name: .FrontSquats, type: .Flexibility, intensity: .I3),
    
    Exercise( id: 4, timeline: .Month, name: .FrontSquats, type: .Flexibility, intensity: .I2),
    Exercise( id: 5, timeline: .Month, name: .FrontSquats, type: .Strength, intensity: .I1),
    Exercise( id: 6, timeline: .Week, name: .FrontSquats, type: .Cardio, intensity: .I3),
]

enum ExerciseNames: String {
    case FrontSquats = "Front Squats"
    case BackSquats = "Back Squats"
    
}

enum ExerciseTypes : String{
    case Strength = "Strength"
    case Cardio = "Cardio"
    case Flexibility = "Flexibility"
}

enum ExerciseIntensities : String {
    case I1 = "Low Intensity"
    case I2 = "Medium Intensity"
    case I3 = "High Intensity"
}

enum ExerciseTimeline : String {
    case Today = "Today"
    case Week = "Week"
    case Month = "Month"
}




struct Exercise: Identifiable{
    var id: Int
    var timeline: ExerciseTimeline
    
    var name: ExerciseNames
    var type: ExerciseTypes
    var intensity: ExerciseIntensities
    
}
