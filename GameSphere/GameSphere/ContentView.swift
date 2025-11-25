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
    if let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") {
        let url = URL(fileURLWithPath: htmlPath)
        webView.load(URLRequest(url: url))
    } else {
        if let url = URL(string: "https://kashmoney1192.github.io/gamesphere/") {
            webView.load(URLRequest(url: url))
        }
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
