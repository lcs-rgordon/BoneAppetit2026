//
//  FeedingView.swift
//  BoneAppetit
//
//  Created by Russell Gordon on 2026-02-26.
//

import SwiftUI

struct FeedingView: View {
    
    // MARK: Stored properties
    let scheduledTime: String
    let foodAndAmount: String
    let personAndActualTime: String
    
    // MARK: Computed properties
    var body: some View {
        HStack {
            
            VStack(alignment: .leading) {
                Text(scheduledTime)
                    .font(.title3)
                    .bold()
                Text(foodAndAmount)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("\(Image(systemName: "checkmark.circle.fill"))")
                    .foregroundStyle(.green)
                Text(personAndActualTime)
            }
        }
    }
}

#Preview {
    FeedingView(
        scheduledTime: "11 AM",
        foodAndAmount: "Kibble, 1.5 scoops",
        personAndActualTime: "Russ, at 7:31 AM"
    )
}
