//
//  ViewController.swift
//  DemoClient
//
//  Created by Susim Samanta on 20/05/15.
//  Copyright (c) 2015 Susim Samanta. All rights reserved.
//

import UIKit
import SSHTTPClient

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let client = SSHTTPClient(url: "http://itunes.apple.com/us/rss/topfreeapplications/limit=100/json", method: "GET", httpBody: "", headerFieldsAndValues: [:])
        client.getJsonData { (obj, error) -> Void in
            print(obj)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

