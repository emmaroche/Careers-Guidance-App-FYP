//
//  QuestionsVIew.swift
//  Career's Guidance App
//
//  Created by Emma Roche on 02/03/2023.
//

import SwiftUI

struct QuestionView: View {
    @Binding var question: Question
    @Binding var correct: Int
    @Binding var wrong: Int
    @Binding var answered: Int
    @Binding var social: Int
    @Binding var creative: Int
    
    @State var selected = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 22) {
            HStack(spacing: 15){
            Text(question.question!)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 25)
            
            
            Spacer(minLength: 0)
            
            Text(question.question_number!)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 25)
            }
            
            // Options
            Button(action: {
                selected = (question.answer_choices?[0])!
                if selected == question.answer_choices![0]{
                    question.answer = question.answer_choices![0]
                }
            }) {
                Text(question.answer_choices![0])
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.answer_choices![0]), lineWidth: 2)
                    )
            }
            
            Button(action: {
                selected = (question.answer_choices?[1])!
                if selected == question.answer_choices![1]{
                    question.answer = question.answer_choices![1]
                }
            }) {
                Text(question.answer_choices![1])
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.answer_choices![1]), lineWidth: 2)
                    )
            }
            
            Button(action: {
                selected = (question.answer_choices?[2])!
                if selected == question.answer_choices![2]{
                    question.answer = question.answer_choices![2]
                }
            }) {
                Text(question.answer_choices![2])
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.answer_choices![2]), lineWidth: 2)
                    )
            }
            
            Button(action: {
                
                selected = (question.answer_choices?[3])!
                if selected == question.answer_choices![3]{
                    question.answer = question.answer_choices![3]
                }
            }) {
                Text(question.answer_choices![3])
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.answer_choices![3]), lineWidth: 2)
                    )
            }
            
            Button(action: {
                selected = (question.answer_choices?[4])!
                if selected == question.answer_choices![4]{
                    question.answer = question.answer_choices![4]
                }
            }) {
                Text(question.answer_choices![4])
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.answer_choices![4]), lineWidth: 2)
                    )
            }
            
            Button(action: {
                selected = (question.answer_choices?[5])!
                if selected == question.answer_choices![5]{
                  question.answer = question.answer_choices![5]
                }

            }) {
                Text(question.answer_choices![5])
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(color(option: question.answer_choices![5]), lineWidth: 2)
                    )
            }
            
            Spacer(minLength: 0)
            
            // Buttons
            HStack(spacing: 15) {
                Button(action: countAns) {
                    Text("Submit")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                }
                // disabling
                .disabled(question.isSubmitted)
                .opacity(question.isSubmitted ? 0.7 : 1)
                
                Button(action: {
                    withAnimation {
                        question.completed.toggle()
                        answered += 1
                    }
                }) {
                    Text("Next")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                }
                .disabled(!question.isSubmitted)
                .opacity(!question.isSubmitted ? 0.7 : 1)
            }
            .padding(.bottom)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
    }
    
    // highlighting Answer
    func color(option: String) -> Color {
        if option == selected {
            // displaying if correct means green, else red
//            if question.isSubmitted {
//                if selected == question.answer! {
//                    return Color.green
//                } else {
//                    return Color.red
//                }
//            } else {
                return Color.blue
            
        } else {
            // displaying right if wrong selected
//            if question.isSubmitted && option != selected {
//                if question.answer! == option {
//                    return Color.green
//                }
//            }
            
            return Color.gray
        }
    }
    
    // check Answer
    func checkAns() {
        if selected == question.answer! {
            correct += 1
        } else {
            wrong += 1
        }
        
        question.isSubmitted.toggle()
    }
    
    func countAns() {
        if selected == question.answer_choices![0] {
            social += 1
        }
        
        if selected == question.answer_choices![1] {
            creative += 1
        }
        
        if selected == question.answer_choices![2] {
            social += 1
        }
        
        if selected == question.answer_choices![3] {
            creative += 1
        }
        
        if selected == question.answer_choices![4] {
            social += 1
        }
        
        if selected == question.answer_choices![5] {
            creative += 1
        }
        
        
        question.isSubmitted.toggle()
    }
}

