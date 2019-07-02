//
//  ViewController.swift
//  EMIND_IOS
//
//  Created by TeamElysium on 15/04/2019.
//  Copyright © 2019 아이맥. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        
        webView = WKWebView(frame: self.view.frame)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        
        self.view = self.webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://emind.kr")
        let request = URLRequest(url: url!)
        webView.load(request)
    }


}

