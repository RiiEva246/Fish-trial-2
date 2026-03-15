//
//  FishermanCard.swift
//  Fish trial 2
//
//  Created by Rin Kim  on 2026-03-15.
//

import SwiftUI

struct FishermanCard: View {
    let fisherman: Fisherman

    var body: some View {
        HStack(spacing: 16) {
            Text(fisherman.emoji)
                .font(.system(size: 44))

            VStack(alignment: .leading, spacing: 4) {
                Text(fisherman.name)
                    .font(.headline)
                Text(fisherman.description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }

            Spacer()
        }
        .padding()
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}
