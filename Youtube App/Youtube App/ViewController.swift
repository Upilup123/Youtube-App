//
//  ViewController.swift
//  Youtube App
//
//  Created by Luthfi Aly on 12/6/17.
//  Copyright © 2017 Luthfialy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    //deklarasi url web
    let urlWeb = "https://www.youtube.com"
    
    //karena di iOS hanya support https, maka kita menambahkan allow arbitory loads di bagian info.plist
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //deklarasi urlRequest
        let requestURL = NSURL(string: urlWeb)
        
        //deklarasi request
        let request = NSURLRequest(url: requestURL! as URL)
        webView.loadRequest(request as URLRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

