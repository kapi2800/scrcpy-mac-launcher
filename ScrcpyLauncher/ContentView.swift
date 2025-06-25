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
        task.executableURL = URL(fileURLWithPath: "/Users/location/scrcpy") //Enter the Path for scrcpy
        task.arguments = [] 

        do {
            try task.run()
        } catch {
            print("Failed to launch scrcpy: \(error)")
        }
    }
}
