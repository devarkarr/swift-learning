//
//  DiceViewPage.swift
//  project-1
//
//  Created by Ar Kar Lin on 4/8/26.
//

import SwiftUI

struct DiceViewPage: View {
    @State private var numberOfDice: Int = 1

    var body: some View {
        VStack {
            Text("Dice Roller").font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice",systemImage:"minus.circle.fill"){
                    withAnimation {
                        numberOfDice -= 1
                    }
                    
                }
                .font(.largeTitle)
                .disabled(numberOfDice == 1)

                
                Button("Add Dice",systemImage: "plus.circle.fill"){
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .font(.largeTitle)
                .disabled(numberOfDice == 5)

            }.padding()
                .labelStyle(.iconOnly)
            
        }.padding()
            .frame(maxWidth:.infinity,maxHeight: .infinity)
//            .background(.appBackground)
            .tint(.white)
    
    }
}

#Preview {
    DiceViewPage()
}
