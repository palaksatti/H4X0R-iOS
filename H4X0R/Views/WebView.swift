//
//  WebView.swift
//  H4X0R
//
//  Created by Palak Satti on 06/02/24.
//

import SwiftUI
import WebKit
import Foundation

struct WebView: UIViewRepresentable{
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
