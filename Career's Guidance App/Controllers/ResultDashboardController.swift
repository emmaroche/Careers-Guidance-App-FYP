//
//  ResultDashboardController.swift
//  Career's Guidance App
//
//  Created by Emma Roche on 05/04/2023.
//

import SwiftUI
import UIKit
import Firebase
import SwiftPieChart

struct ResultsDashboardController: View {
    @ObservedObject var viewModel = ResultViewModel()
    @State var isModal: Bool = false
    //    @State var data: [Double] = [0, 0, 0, 0, 0, 0]
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading, spacing: 35) {
                Text("Results Dashboard")
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .fontWeight(.bold)
                
                Text("Top Scoring Categories")
                    .font(.system(size: 18, weight: .semibold, design: .default))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.trailing)
                
                VStack(alignment: .center, spacing: 35) {
 
                    PieChart(data: $viewModel.data, labels: ["Social", "Artistic", "Realistic", "Conventional", "Enterprising", "Investigative"], colors: [Color.red, Color.blue, Color.purple, Color.gray, Color.green, Color.pink], borderColor: Color.black).frame(height: 300)
                    
                }.modifier(CardModifier())
                

                Text("Previous results")
                    .font(.system(size: 18, weight: .semibold, design: .default))
                    .foregroundColor(.black)
                
                
                VStack(alignment: .leading, spacing: 35)  {
                    ForEach(viewModel.results.indices, id: \.self) { index in
                        ResultsDashboardView(result: $viewModel.results[index])
                        
                    }
                    
                }
                
                
                Spacer()
            }.padding(.leading, 30)
                .padding(.trailing, 30)
            
            
                .navigationBarTitle("Results")
            //                .onAppear() {
            //                    viewModel.fetchResults()
            //
            //                }
            
        }.clipped()
            .onAppear() {
                viewModel.fetchResults()
                viewModel.countRes() }
    }
    
}





struct ResultsDashboardController_Previews: PreviewProvider {
    static var previews: some View {
        ResultsDashboardController()
    }
}

