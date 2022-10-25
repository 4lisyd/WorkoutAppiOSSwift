//
//  ListOfExecisesView.swift
//  WorkoutApp
//
//  Created by ali on 10/20/22.
//

import SwiftUI

struct ListOfExecisesView: View {
    
    
    
    
    var exercises: [Exercise]
    
    var body: some View {
           

        ScrollView {
            ForEach(exercises) { exercise in
                           
                                NavigationLink(destination: ExerciseDetail(exercise: exercise)){
                                    ExerciseRow(exercise: exercise)
                                }
            }
        }
        
                
            
    }
}

struct ListOfExecisesView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfExecisesView(exercises: exercises)
    }
}
