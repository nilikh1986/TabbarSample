//
//  FirstViewController.swift
//  TabbarSample
//
//  Created by Patnayak, Nilikh on 11/2/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let tempView = UIView()
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                tempView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                tempView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tempView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tempView.heightAnchor.constraint(equalToConstant: 100)
                ])
        } else {
            NSLayoutConstraint.activate([
                tempView.topAnchor.constraint(equalTo: view.topAnchor),
                //tempView.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
                tempView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tempView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tempView.heightAnchor.constraint(equalToConstant: 100)
                ])
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tempView.backgroundColor = .red
        tempView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tempView)
        
        //self.tabBarController?.tabBar.isHidden = false
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //self.tabBarController?.tabBar.isHidden = true
    }
    
    

//    func setTabBarVisible(_ visible:Bool, animated:Bool) {
//        //https://stackoverflow.com/questions/20935228/how-to-hide-tab-bar-with-animation-in-ios
//        // This cannot be called before viewDidLayoutSubviews(), because the frame is not set before this time
//
//        // bail if the current state matches the desired state
//        if (tabBarIsVisible() == visible) { return }
//
//        // get a frame calculation ready
//        let frame = self.tabBarController?.tabBar.frame
//        let height = frame?.size.height
//        let offsetY = (visible ? -height! : height)
//
//        // zero duration means no animation
//        let duration:TimeInterval = (animated ? 0.3 : 0.0)
//
//        //  animate the tabBar
//        if frame != nil {
////            UIView.animate(withDuration: duration) {
////                self.tabBarController?.tabBar.frame = frame!.offsetBy(dx: 0, dy: offsetY!)
////                self.tabBarController?.tabBar.isHidden = !self.tabBarIsVisible()
////                return
////            }
//
//            UIView.animate(withDuration: duration, animations: {
//                self.tabBarController?.tabBar.frame = frame!.offsetBy(dx: 0, dy: offsetY!)
//                self.tabBarController?.tabBar.isHidden = !self.tabBarIsVisible()
//            }, completion: { (finished) in
//
//                self.view.setNeedsDisplay()
//            })
//        }
//    }
    

    
//    func tabBarIsVisible() ->Bool {
//        return (self.tabBarController?.tabBar.frame.origin.y ?? 0) < self.view.frame.maxY
//    }
 

    @IBAction func dismissAction(_ sender: Any) {
        print("Dismiss tapped!")
        
        let frame = self.tabBarController?.tabBar.frame
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneTapped))
        let clearButton = UIBarButtonItem(title: "Clear", style: .plain, target: self, action: #selector(clearTapped))
        
//        let toolbar = UIToolbar(frame: CGRect(x: (frame?.origin.x)!, y: (frame?.origin.y)!, width: 375, height:40))
//        toolbar.setItems([doneButton, clearButton], animated: true)
        
        let sortFilterView = UIView()
        
        self.view.addSubview(sortFilterView)
        
        sortFilterView.backgroundColor = .orange
        sortFilterView.frame = frame!
        
        self.tabBarController?.tabBar.isHidden = !(self.tabBarController?.tabBar.isHidden)!
    }
    
    @objc func doneTapped() {
        print("done tapped")
    }
    
    @objc func clearTapped() {
        print("clear tapped")
    }
    
    @IBAction func presentModalTapped(_ sender: Any) {
        print("Present modal tapped!")
        let modalViewController = ModalViewController()
        self.tabBarController?.present(modalViewController, animated: true, completion: nil)
    }
}




