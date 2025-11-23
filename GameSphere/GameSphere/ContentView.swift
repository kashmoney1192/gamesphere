//
//  ContentView.swift
//  GameSphere
//
//  Created by Aakash Goradia on 11/23/25.
//

import SwiftUI

#if os(iOS)
import WebKit

struct WebViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()

        if let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            webView.load(URLRequest(url: url))
        } else {
            if let url = URL(string: "https://kashmoney1192.github.io/gamesphere/") {
                webView.load(URLRequest(url: url))
            }
        }

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
    }
}

struct ContentView: View {
    var body: some View {
        WebViewContainer()
            .ignoresSafeArea()
    }
}

#else
struct ContentView: View {
    var body: some View {
        VStack {
            Text("GameSphere Arcade")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Open https://kashmoney1192.github.io/gamesphere/ in your web browser")
                .font(.body)
                .padding()
        }
    }
}
#endif

#Preview {
    ContentView()
}
