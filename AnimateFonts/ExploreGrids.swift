//
//  ExploreGrids.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct ExploreGrids: View {
    var body: some View {
        ZStack {
            
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Grid {
                    GridRow {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.blue)
                            .gridCellColumns(2)
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.blue)
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.blue)
                    }
                    GridRow {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.red)
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.green)
                            .gridCellColumns(2)
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.red)
                    }
                    GridRow {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.yellow)
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.orange)
                           
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.yellow)
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.orange)
                            
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ExploreGrids()
}
