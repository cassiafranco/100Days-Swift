//
//  WikiViewController.swift
//  Project16
//
//  Created by cassia franco on 17/09/21.
//

import WebKit
import UIKit

class WikiViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    var website: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard website != nil  else {
            print("Website not set")
            navigationController?.popViewController(animated: true)
            return
        }
        if let url = URL(string: website) {
            webView.load(URLRequest(url: url))
        }

    }

}
