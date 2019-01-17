//
//  ViewController.swift
//  SwiftJsonDemo
//
//  Created by Qiwihui on 1/17/19.
//  Copyright © 2019 Qiwihui. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let file = Bundle.main.path(forResource: "words_array", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: file))
                let json = try JSON(data: data)
                print(json.count)
            } catch {
                print("Error loading")
            }
        } else {
            print("Error finding")
        }
        
        if let file = Bundle.main.path(forResource: "words_idf", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: file))
                let json = try JSON(data: data)
                print(json["idf"].count)
            } catch {
                print("Error loading")
            }
        } else {
            print("Error finding")
        }
    }


}
