//
//  FeedingHistoryView.swift
//  BoneAppetit
//
//  Created by Russell Gordon on 2026-02-26.
//

import SwiftUI

struct FeedingHistoryView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .navigationTitle("Piper")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        // Does nothing right now
                    } label: {
                        Text("\(Image(systemName: "chevron.backward")) Pets")
                    }

                }
            }
        }
    }
}

#Preview {
    FeedingHistoryView()
}
