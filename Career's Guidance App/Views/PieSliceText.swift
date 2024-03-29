//
//  PieSliceText.swift
//  Career's Guidance App
//
//  Created by Emma Roche on 12/04/2023.
//

import SwiftUI

//Code Resource: https://towardsdatascience.com/data-visualization-with-swiftui-pie-charts-bcad1903c5d2

struct PieSliceText: View {
  let title: String
  let description: String
  
  var body: some View {
    VStack {
      Text(title)
         .font(.system(size: 17, weight: .bold, design: .default))
      Text(description)
            .font(.system(size: 16, weight: .semibold, design: .default))
    }
  }
}
