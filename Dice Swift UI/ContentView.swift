//
//  ContentView.swift
//  Dice Swift UI
//
//  Created by Madhu on 06/06/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    @State var leftImageView = 1
    @State var rightImageView = 1
    
    var body: some View
    {
        ZStack
            {
         Image("background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("diceeLogo")
                    Spacer()
                    HStack {
                        DiceView(n:leftImageView)
                        DiceView(n:rightImageView)
                        
                    }
                    .padding(.horizontal)

                    Spacer()
                    Button(action:
                        {
                            self.leftImageView = Int.random(in: 1...6)
                            self.rightImageView = Int.random(in: 1...6)
                            
                    })
                     {
                        Text("Let's Roll").font(Font.custom("GreatVibes-Regular", size: 34)).fontWeight(.heavy).foregroundColor(Color.white)
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}

struct DiceView: View {
    let n : Int
    var body: some View {
        Image("dice\(n)")
            .resizable().aspectRatio(contentMode: .fit)
        .padding()
    }
}
