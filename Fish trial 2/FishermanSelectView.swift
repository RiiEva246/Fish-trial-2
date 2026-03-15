//
//  fishermanselectview.swift
//  Fish trial 2
//
//  Created by Rin Kim  on 2026-03-15.
//

import SwiftUI

struct FishermanSelectView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(allFishermen) { fisherman in
                        NavigationLink(destination: ContentView(fisherman: fisherman)) {
                            FishermanCard(fisherman: fisherman)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle("Choose a Fisherman")
        }
    }
}
