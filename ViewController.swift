//
//  ViewController.swift
//  testA
//
//  Created by ex_ouyq2 on 2025/1/10.
//

import UIKit

enum FetchError: Error {
    case networkError
}


class YourClass {
    var readIds: [String]?
    var atIds: [String]?
}

extension YourClass {
    var unReadIds: [String]? {
        guard let readIds = self.readIds, !readIds.isEmpty, let atIds = self.atIds, atIds.count >= readIds.count else {
            return self.atIds
        }
        let rArr = atIds.filter {!readIds.contains($0) }
        return rArr.isEmpty ? nil : rArr
    }
}

class Person {
    var uderId: String = ""
    var userName: String = ""
    
}

let arr = [Person()]

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func mastButtonAction(_ sender: UIButton){
        print("按钮点击")
    }
    
    @objc func mastAdd2(_ sender: UIButton){
        print("按钮点击")
    }
    @objc func devAdd1(_ sender: UIButton){
        print("按钮点击")
    }
    
    @objc func devAdd2(_ sender: UIButton){
        print("按钮点击")
    }
    
    @objc func devAdd3(_ sender: UIButton){
        print("按钮点击")
    }
    @objc func devAdd4(_ sender: UIButton){
        print("按钮点击 devAdd4")
    }
    @objc func devAdd5(_ sender: UIButton){
        print("按钮点击 devAdd5")
    }
}

