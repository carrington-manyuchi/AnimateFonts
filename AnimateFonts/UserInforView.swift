//
//  UserInforView.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct UserInforView: View {
    
    let name: String
    let email: String
    let phone: String
    let address: String
    
    
    var body: some View {
        VStack {
            GroupBox {
                VStack(alignment: .leading) {
                    Text("Name: \(name)")
                    Text("Email: \(email)")
                    
                    GroupBox {
                        VStack(alignment: .leading) {
                            Text("Phone: \(phone)")
                            Text("Address: \(address)")
                        }
                    } label: {
                        Label("Contact Info", systemImage: "phone.circle")
                    }
                }
            } label: {
                HStack {
                    Image(systemName: "person.crop.circle")
                    Text("User Information")
                }
            }
        }
        .padding()
    }
}

#Preview {
    UserInforView(name: "John Doe", email: "johndoe@gmail.com", phone: "+27 995  7881 ", address: "Dainfern, Johannesburg")
}
