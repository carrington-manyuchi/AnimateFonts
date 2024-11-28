//
//  RowItemView.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct RowItemView: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3) {
                Text(person.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                
                Text(person.hobby.capitalized)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(.orange)
            }
            Spacer()
            
            if let hobbImage = person.hobbyImage {
                Image(systemName: hobbImage)
                    .foregroundStyle(.red)
                    .padding()
                    .background(
                        Circle()
                            .stroke(.red)
                    )
            }
        }
        .padding()
        .background(.black)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    RowItemView(person: .init(name: "Josephine", hobby: "SwiftUI", hobbyImage:  "star.fill"))
        .padding()
}
