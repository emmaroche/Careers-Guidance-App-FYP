//
//  ResultsView.swift
//  Career's Guidance App
//
//  Created by Emma Roche on 05/04/2023.
//

import SwiftUI

struct ResultsView: View {
    @Binding var result: Results
    var body: some View {
        VStack(alignment: .leading, spacing: 35) {
            
            HStack(alignment: .center) {
                VStack(alignment: .leading , spacing: 25) {
                    HStack{
                        ZStack {
                            Text(result.Result!)
                                .font(.system(size: 24, weight: .bold, design: .default))
                                .frame(maxWidth: .infinity, alignment: .center)
                                .lineLimit(nil)
                        }
                    }
                    Text(result.ResultDescription!)
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer()
            }
            .padding(.bottom, 50)
            .padding(.top, 30)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.white)
            .modifier(CardModifier())
            .padding(.all, 20)
            Text("Based on your results, the following courses have been recommended:")
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
                            HStack(alignment: .center) {
                                VStack(alignment: .leading , spacing: 25) {
                                    HStack{
                                        Text(result.Result!)
                                            .font(.system(size: 24, weight: .bold, design: .default))
                                            .frame(maxWidth: .infinity, alignment: .center)
                                    }
                                    Text(result.ResultDescription! )
                                        .font(.system(size: 16, weight: .bold, design: .default))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .fixedSize(horizontal: false, vertical: true)
                                        .lineLimit(nil)
                                }
                                Spacer()
                            }
                            .padding(.bottom, 50)
                            .padding(.top, 30)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color.white)
                            .modifier(CardModifier())
                            .padding(.all, 20)
            
            
        }
        
    }
    
}
