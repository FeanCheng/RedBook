import SwiftUI

struct ContentView: View {
    var body: some View {
        KuiklyRenderViewPage(pageName: "HelloWorld", data: [:]).ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
