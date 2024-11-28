//
//  NavStackAndTextFields.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct NavStackAndTextFields: View {
    
    @State private var name: String = ""
    @State private var age: String = ""
    
    var disableNavigationLink: Bool {
        name.count < 2 || age.isEmpty
    }
    
    var body: some View {
        NavigationStack {
            VStack {
               
                
                VStack(alignment: .leading) {
                    Text("Enter your name")
                    TextField("Name", text: $name)
                }
                
                VStack(alignment: .leading) {
                    Text("Enter your age")
                    TextField("Age", text: $age)
                        .keyboardType(.numberPad)
                }
                
                
                Spacer()
                NavigationLink {
                    DrinkingView(name: name, age: age)
                } label: {
                    Text("Okay")
                        .font(.title)
                        .padding(.horizontal)
                        .overlay {
                            Capsule()
                            .stroke()
                            
                        }
                        
                }
                .disabled(disableNavigationLink)
                Spacer()
                Spacer()
                Spacer()
            }
            .padding()
            .navigationTitle("Navigation Example")
        }
    }
}



#Preview {
    NavStackAndTextFields()
}
