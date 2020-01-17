//
//  LinkView.swift
//  Hacker News
//
//  Created by Suman Sigdel on 1/16/20.
//  Copyright © 2020 Suman Sigdel. All rights reserved.
//

import SwiftUI
import WebKit

struct LinkView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
        
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView(url: "https://www.google.com")
    }
}

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURLString = urlString {
            if let url = URL(string: safeURLString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
            
        }
        
    }
    
    
}
