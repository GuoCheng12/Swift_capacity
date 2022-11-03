//
//  ContentView.swift
//  FoodPickerApp
//
//  Created by 巫国诚 on 2022/10/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Text("Hello, world!")
                .font(.largeTitle)
                .bold()
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth:.infinity,alignment: .leading)
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
        .padding(.vertical, 20)
        .frame(width: 300.0, height: 350.0)
        .background()
//        .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
        .mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
        .shadow(radius: 30)
        .padding(.horizontal, 10)
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
