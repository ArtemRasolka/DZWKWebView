//
//  ViewController.swift
//  WKWebView
//
//  Created by Admin on 25.10.22.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        let webConfig = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfig)
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        guard let url = URL(string: "https://www.google.com") else { return }
        let request = URLRequest(url: url)
        
        webView.load(request)
    }
}
