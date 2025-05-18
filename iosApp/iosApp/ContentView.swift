import SwiftUI
import UIKit
import composeApp

struct ContentView: View {
  init() {
    debugBundles()
  }
    var body: some View {
      ComposeView()
            .ignoresSafeArea(.all)
    }
}

struct ComposeView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return IosEntrypointKt.createComposeViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

func debugBundles() {
    print("All bundles:")
    for bundle in Bundle.allBundles {
        print("Bundle: \(bundle)")
        print("  - identifier: \(bundle.bundleIdentifier ?? "nil")")
        print("  - path: \(bundle.bundlePath)")
    }

    print("\nBundle.main: \(Bundle.main.bundleIdentifier ?? "nil")")
}
