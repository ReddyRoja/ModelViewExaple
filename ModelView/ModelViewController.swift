//
//  ModelViewController.swift
//  ModelView
//
//  Created by Dinesh Sunder on 12/8/17.
//  Copyright © 2017 Dinesh Sunder. All rights reserved.
//

import UIKit

class ModelViewController: UIViewController {

    var tapCloseButtonActionHandler : (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        //elf.view.backgroundColor=UIColor.gray
        let effect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: effect)
        blurView.frame = self.view.bounds
        self.view.addSubview(blurView)
        self.view.sendSubview(toBack: blurView)
        
    }
    func assignbackground(){
        
        let background = UIImage(named: "signinbackground")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
    
    @IBAction func tapCloseButton() {
        self.tapCloseButtonActionHandler?()
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ModalViewController viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ModalViewController viewWillDisappear")
    }
}
