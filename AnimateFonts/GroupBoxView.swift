//
//  GroupBoxView.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct GroupBoxView: View {
    
    
    @State private var enableNotification: Bool = false
    @State private var darkMode: Bool = false
    
    var body: some View {
        GroupBox {
            VStack(alignment: .leading) {
                Toggle("Enable Notification", isOn: $enableNotification)
                Toggle("Dark Mode", isOn: $darkMode)
            }
        } label: {
            Label("Settings", systemImage: "gearshape")
        }
        .padding()
        .shadow(color: .black.opacity(0.5), radius: 5, x: 2, y: 2)
    }
}

#Preview {
    GroupBoxView()
}
