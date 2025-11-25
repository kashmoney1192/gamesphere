//
//  ContentView.swift
//  GameSphere
//
//  Created by Aakash Goradia on 11/23/25.
//

import SwiftUI
import WebKit

#if os(iOS)
struct WebViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        loadHTML(into: webView)
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
    }
}
#else
struct WebViewContainer: NSViewRepresentable {
    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        loadHTML(into: webView)
        return webView
    }

    func updateNSView(_ webView: WKWebView, context: Context) {
    }
}
#endif

func loadHTML(into webView: WKWebView) {
    // Try to load from bundle first
    if let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") {
        do {
            let htmlContent = try String(contentsOfFile: htmlPath, encoding: .utf8)
            let baseURL = URL(fileURLWithPath: htmlPath).deletingLastPathComponent()
            webView.loadHTMLString(htmlContent, baseURL: baseURL)
            return
        } catch {
            print("Error loading HTML: \(error)")
        }
    }

    // Fallback to GitHub Pages
    if let url = URL(string: "https://kashmoney1192.github.io/gamesphere/") {
        webView.load(URLRequest(url: url))
    }
}

struct ContentView: View {
    var body: some View {
        WebViewContainer()
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
