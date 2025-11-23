//
//  ContentView.swift
//  GameSphere
//
//  Created by Aakash Goradia on 11/23/25.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebViewContainer()
            .ignoresSafeArea()
    }
}

struct WebViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()

        // Load index.html from the app's main bundle or from a local file
        if let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            webView.load(URLRequest(url: url))
        } else {
            // Fallback: Try to load from GitHub Pages
            if let url = URL(string: "https://kashmoney1192.github.io/gamesphere/") {
                webView.load(URLRequest(url: url))
            }
        }

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        // No updates needed
    }
}

#Preview {
    ContentView()
}
