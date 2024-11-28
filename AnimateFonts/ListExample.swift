//
//  ListExample.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct ListExample: View {
    
    let people: [Person] = [
        .init(name: "Kamila", hobby: "XCode", hobbyImage: nil),
        .init(name: "Josephine", hobby: "UIKit", hobbyImage:  "star.fill"),
        .init(name: "Carrington", hobby: "SwiftUI", hobbyImage: "star.fill"),
        .init(name: "Manyuchi", hobby: "Objective-C", hobbyImage: "star.fill"),
    ]
    var body: some View {
        List {
            ForEach(people) { person in
                RowItemView(person: person)
                    .listRowSeparator(.hidden)
            }
        }
    }
}



#Preview {
    ListExample()
}
