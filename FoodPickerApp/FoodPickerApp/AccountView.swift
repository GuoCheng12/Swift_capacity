//
//  AccountView.swift
//  FoodPickerApp
//
//  Created by 巫国诚 on 2022/11/3.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List{
                VStack(spacing: 8) {
                    Image(systemName:"person.crop.circle.badge.checkmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue,.blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(
                            Image(systemName: "sun.min")
                                .symbolVariant(.fill)
                                .foregroundColor(.blue)
                                .font(.system(size: 40))
                                .offset(x:50,y:-18)
                        )
                    Text("GuoCheng Wu")
                        .font(.title3.bold())
                    HStack {
                        Image(systemName: "location")
                            .imageScale(.small)
                        Text("China")
                            .foregroundColor(.secondary)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                Section {
                    Label("Setting",systemImage: "gear")
                    Label("Billing",systemImage: "creditcard")
                    Label("Help",systemImage: "questionmark")
                }
                .listRowSeparatorTint(.green)
                .listRowSeparator(.hidden)
            }
            .listStyle(.automatic)
            .navigationTitle("Account")
        }
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AccountView()
            AccountView()
        }
    }
}
