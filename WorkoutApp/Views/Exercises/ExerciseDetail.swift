//
//  ExerciseDetail.swift
//  WorkoutApp
//
//  Created by ali on 10/24/22.
//

import SwiftUI

struct ExerciseDetail: View {
    
    var exercise: Exercise
    
    var body: some View {
        
        
        VStack(alignment: .leading){
            
            HStack (alignment: .center){
                
                Image("liftingHuman").resizable().aspectRatio(1, contentMode: .fit)
            }
            Text("Excercise").font(.headline)
            ZStack {
                Color(.lightGray).frame(height: 100).cornerRadius(20)
                HStack(alignment: .center){
                    Spacer()
                    HStack {
                        Image(systemName: "star")
                        VStack {
                            Text("64 Kg").bold()
                            Text("Weight")
                        }
                    
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "star")
                        VStack {
                            Text("19").font(.headline)
                            Text("Reps")
                        }
                    
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "star")
                        VStack {
                            Text("4").font(.headline)
                            Text("Sets")
                        }
                    
                    }
                    Spacer()
                    
                }
            }
            Text("Muscle Group").font(.headline)
            HStack{
                ZStack {
                    Rectangle().cornerRadius(20).foregroundColor(.gray).frame(maxWidth: 120, maxHeight: 40)
                    Text("Quadriceps").lineLimit(1).fixedSize()
                }
                ZStack {
                    Rectangle().cornerRadius(20).foregroundColor(.gray).frame(maxWidth: 160, maxHeight: 40)
                    Text("Gluteus maximus").lineLimit(1).fixedSize()
                }
            }
            Text("History").font(.headline)
            ScrollView(.horizontal) {
                HStack(spacing: 10){
                    HStack{
                        ZStack{
                            Rectangle().cornerRadius(10).foregroundColor(.gray).frame(width: 50, height: 70)
                            Text("54")
                           
                        }
                        VStack(alignment:.leading){
                            Text("Completed Sets").font(.headline).fontWeight(.bold)
                            Text("2 per weeks").fontWeight(.light)
                            
                        }
                    }
                   
                        HStack{
                            ZStack{
                                Rectangle().cornerRadius(10).foregroundColor(.gray).frame(width: 50, height: 70)
                                VStack {
                                    Text("55").font(.headline).fontWeight(.bold)
                                    Text("kg")
                                        .fontWeight(.light)
                                    
                                }
                               
                            }
                            VStack(alignment:.leading){
                                Text("Completed Sets").font(.headline).fontWeight(.bold)
                                Text("2 per weeks").fontWeight(.light)
                                
                            }
                        }
                    
                }
            }
            
            
            Spacer()
        }.padding().navigationTitle(exercise.name.rawValue)
        
        
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetail(exercise: exercises[0])
    }
}
