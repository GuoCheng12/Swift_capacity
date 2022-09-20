//
//  ContentView.swift
//  MM_test
//
//  Created by 巫国诚 on 2022/8/29.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🐸","🐷","🐴","🍉","🐼","🦄"]
    @State var emojiCount = 3
    var body: some View {
        VStack{
            LazyVGrid(columns: [GridItem(),GridItem(),GridItem()] ){
                //CardView(content: emojis[0])
                //CardView(content: emojis[1])
                //CardView(content: emojis[2])
                //CardView(content: emojis[3])
                //ForEach(emojis, id: \.self, content: { emoji in
                //    CardView(content: emoji)
                //})
                ForEach(emojis[0..<emojiCount], id: \.self){
                    emoji in CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                }
            }
            .foregroundColor(.red)
            Spacer(minLength: 20)
            HStack{
               remove
                Spacer()
               add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    var remove: some View{
        Button(action:{
                emojiCount -= 1
        }, label:{
            Image(systemName: "minus.circle")
        })
    }
    var add: some View{
        Button(action:{
                emojiCount += 1
        }, label:{
            Image(systemName: "plus.circle")
        })
    }
}



struct CardView: View{
    var content: String
    @State var isFaceup: Bool = true
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceup{
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            }else{
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceup = !isFaceup
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
