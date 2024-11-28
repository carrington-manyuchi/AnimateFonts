//
//  ExploreGridsTwo.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct ExploreGridsTwo: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            Grid {
                GridRow {
                    Rect(
                        color: .red,
                        count: 2,
                        total: 3
                    )
                    
                    
                    Rect(
                        color: .blue,
                        count: 1,
                        total: 3
                    )
                }
                GridRow {
                    Rect(
                        color: .green,
                        count: 1,
                        total: 3
                    )
                    
                    
                    Rect(
                        color: .yellow,
                        count: 1,
                        total: 3
                    )
                    
                    Rect(
                        color: .blue,
                        count: 1,
                        total: 3
                    )
                }
                GridRow {
                    Rect(
                        color: .green,
                        count: 1,
                        total: 4
                    )
                    
                    
                    Rect(
                        color: .yellow,
                        count: 2,
                        total: 4
                    )
                    
                    Rect(
                        color: .blue,
                        count: 1,
                        total: 4
                    )
                }
            }
            .padding()
        }
    }
}

#Preview {
    ExploreGridsTwo()
}


struct Rect: View {
    
    let color: Color
    let count: Int
    let total: Int
    
    var text: String {
        "\(count) out of \(total)"
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(color.opacity(0.5))
            .overlay {
                Text(text)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            .gridCellColumns(count)
           
    }
}
