//
//  ExerciseRow.swift
//  WorkoutApp
//
//  Created by ali on 10/20/22.
//

import SwiftUI

struct ExerciseRow: View {
    
//    @State private var opacity = 1.0
    
    var exercise: Exercise
    
    var body: some View {
        HStack(spacing: 12){
            ZStack {
                Rectangle().fill(.gray).frame(width: 50, height: 60).cornerRadius(10.0)
                Text(exercise.id.description).font(.title2).foregroundColor(.black)
            }.padding(.all, 10)
            VStack(alignment: .leading, spacing: 20){
                Text(exercise.name.rawValue).font(.headline).lineLimit(1).foregroundColor(.black)
                HStack(spacing: 15){
                    ZStack(alignment: .leading){
                        
                        HStack {
                            Spacer().frame(width: 5)
                            Text(exercise.type.rawValue).lineLimit(1).foregroundColor(.black)
                            Spacer()
                            
                        }.frame(width: 90)
                        Circle().fill(.blue).frame(width: 20).opacity(0.2)
                    }
                    ZStack(alignment: .leading){
                        HStack {
                            Spacer().frame(width: 5)
                            Text(exercise.intensity.rawValue).lineLimit(1).foregroundColor(.black)
                                
                        }
                        if (exercise.intensity == ExerciseIntensities.I1){
                            Circle().fill(.green).frame(width: 20).opacity(0.2)
                        }
                        if (exercise.intensity == ExerciseIntensities.I2){
                            Circle().fill(.blue).frame(width: 20).opacity(0.2)
                        }
                        if (exercise.intensity == ExerciseIntensities.I3){
                            Circle().fill(.red).frame(width: 20).opacity(0.2)
                        }
                        
                    }
                    
                }
                
            }
            Spacer()
        }
    }
}

struct ExerciseRow_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRow(exercise: exercises[0])
    }
}
