//
//  FunWIthFrames.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct FunWithFrames: View {
    var body: some View {
        ZStack {
            Text("Upper Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
            Text("Upper Right")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            
            Text("Lower Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            
            Text("Lower Right")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            
            Text("Center Top")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            Text("Center Bottom")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            
            Text("Center Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            
            Text("Center Right ")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
            
            Text("Center")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
        }
        .font(.headline)
        .fontWeight(.semibold)
        .foregroundStyle(.tint)
        .padding()
    }
}

#Preview {
    FunWithFrames()
}
