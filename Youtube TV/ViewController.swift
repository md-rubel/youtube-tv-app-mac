//
//  ViewController.swift
//  Youtube TV
//
//  Created by MD RUBEL on 28/8/21.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.customUserAgent = "Mozilla/5.0 (Web0S; Linux/SmartTV) AppleWebKit/537.36 (KHTML, like Gecko) QtWebEngine/5.2.1 Chr0me/38.0.2125.122 Safari/537.36 LG Browser/8.00.00(LGE; 60UH6550-UB; 03.00.15; 1; DTV_W16N); webOS.TV-2016; LG NetCast.TV-2013 Compatible (LGE, 60UH6550-UB, wireless)"
        webView.allowsBackForwardNavigationGestures = false
        webView.load(URLRequest(url: URL(string: "https://youtube.com/tv#/")!))
    }
    
    override func viewDidAppear() {
        view.window?.toggleFullScreen(self)
    }

    override var representedObject: Any? {
        didSet {
            
        }
    }
}
