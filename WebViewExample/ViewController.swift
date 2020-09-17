//
//  ViewController.swift
//  WebViewExample
//
//  Created by Mahmoud Waked on 9/17/20.
//  Copyright © 2020 BIM. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController{
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.youtube.com/watch?v=695PN9xaEhs")
        self.webView.load(URLRequest(url: url!))
        
        webView.goBack()
        
//       addWebView()  // This another way
       
    }

    func addWebView(){
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
                 self.view.addSubview(webView)
                 let url = URL(string: "https://www.youtube.com/watch?v=695PN9xaEhs")
                 webView.load(URLRequest(url: url!))
    }
}

