//
//  DetailView.swift
//  H4X0R
//
//  Created by Palak Satti on 06/02/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
