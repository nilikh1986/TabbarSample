//
//  SecondViewController.swift
//  TabbarSample
//
//  Created by Patnayak, Nilikh on 11/2/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneTapped))
        let clearButton = UIBarButtonItem(title: "Clear", style: .plain, target: self, action: #selector(clearTapped))
        
        let toolbar = UIToolbar()
        self.view.addSubview(toolbar)
        toolbar.setItems([doneButton, clearButton], animated: true)
//        NSLayoutConstraint.activate([
//            toolbar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            toolbar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            toolbar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            //toolbar.heightAnchor.constraint(equalToConstant: 200)
//            ])
        
        
        
        
    }
    
    @objc func doneTapped() {
        print("done tapped")
    }
    
    @objc func clearTapped() {
        print("clear tapped")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

