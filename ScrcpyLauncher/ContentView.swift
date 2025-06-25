import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Scrcpy Launcher")
                .font(.title)
            Button("Launch Scrcpy") {
                launchScrcpy()
            }
        }
        .padding()
    }

    func launchScrcpy() {
        let task = Process()
        task.executableURL = URL(fileURLWithPath: "/Users/kapilkumar/Downloads/scrcpy-macos-aarch64-v3.3.1/scrcpy")
        task.arguments = [] // Add any desired args here

        do {
            try task.run()
        } catch {
            print("❌ Failed to launch scrcpy: \(error)")
        }
    }
}
