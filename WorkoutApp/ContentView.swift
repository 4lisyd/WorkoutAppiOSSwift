//
//  ContentView.swift
//  WorkoutApp
//
//  Created by ali on 10/20/22.
//

import SwiftUI

struct ContentView: View {
    
    @State public var currentTimelineView = ExerciseTimeline.Today
    
    var body: some View {
        

                
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                VStack(alignment: .leading, spacing: 40) {
                        HStack{
                            Text("Good morning! ").font(.title2)
                            Spacer()
                            Image("someonesPortrait").resizable().clipShape(Circle()).frame(width: 40, height: 50)
                        }

                    HStack(alignment: .center){
                            VStack {
                                Button(
                                    action: {
                                        currentTimelineView = .Today
                                    },
                                    label: {
                                        
                                        currentTimelineView == .Today ? Text("Today's workout").foregroundColor(Color("AccentColorDark")).bold() : Text("Today's workout").foregroundColor(.black)
                                        
                                        
                                    }
                                )
                                VStack{
                                    Color(UIColor(named: "AccentColorDark") ?? .white).frame(height: currentTimelineView == .Today ? 4: 0)
                                }
                                
                            }.fixedSize()
                            Spacer()
                            VStack {
                                Button(
                                    action: {
                                        currentTimelineView = .Week
                                    },
                                    label: {  currentTimelineView == .Week ? Text("Week").foregroundColor(Color("AccentColorDark")).bold() : Text("Week").foregroundColor(.black)
                                    }
                                )
                                VStack{
                                    Color(UIColor(named: "AccentColorDark") ?? .white).frame(height: currentTimelineView == .Week ? 4: 0)
                                    
                                }
                             
                            }
                            Spacer()
                            VStack() {
                                Button(
                                    action: {
                                        currentTimelineView = .Month
                                    },
                                    label: {  currentTimelineView == .Month ? Text("Month").foregroundColor(Color("AccentColorDark")).bold() : Text("Month").foregroundColor(.black)
                                    }
                                )
                                VStack{
                                    Color(UIColor(named: "AccentColorDark") ?? .white).frame(height: currentTimelineView == .Month ? 4: 0)
                                    
                                }
                            }
                        }

                    Text("\(exercises.filter({ex in ex.timeline == currentTimelineView}).count) Exercises").bold()
                  
                        ListOfExecisesView(exercises: exercises.filter({ex in ex.timeline == currentTimelineView}))
                    

                    Spacer()
                    
                    
                }.padding(.all, 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 pro max"))

    }
}
