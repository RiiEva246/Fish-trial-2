import SwiftUI

struct ContentView: View {

    let fisherman: Fisherman
    @State private var isFishing = false

    var body: some View {
        VStack(spacing: 24) {

            Text(fisherman.emoji)
                .font(.system(size: 64))

            Text(fisherman.name)
                .font(.title2)
                .fontWeight(.semibold)

            Text(fisherman.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)

            Text(isFishing ? "Waiting for a bite..." : "Ready to cast")
                .font(.callout)
                .foregroundStyle(.secondary)

            Button(isFishing ? "Reel in" : "Go Fishing") {
                isFishing.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(isFishing ? .blue : .teal)
        }
        .padding(32)
        .navigationTitle(fisherman.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView(fisherman: allFishermen[0])
}
