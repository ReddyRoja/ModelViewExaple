//
//  CodePickerViewController.swift
//  ModelView
//
//  Created by Dinesh Sunder on 12/9/17.
//  Copyright © 2017 Dinesh Sunder. All rights reserved.
//

import UIKit
import CountryPicker

class CodePickerViewController: UIViewController,CountryPickerDelegate{
    
    
    @IBOutlet weak var pick_code_button:UIButton!
    @IBOutlet weak var phocode: UILabel!

    @IBOutlet weak var picker: CountryPicker!
    var isHidden = true
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let locale = Locale.current
        let code = (locale as NSLocale).object(forKey: NSLocale.Key.countryCode) as! String?
        //init Picker
        picker.countryPickerDelegate = self
        picker.showPhoneNumbers = true
        picker.setCountry(code!)
        picker.isHidden=true
        pick_code_button.addTarget(self, action: #selector(didTapOnCode), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func didTapOnCode(){
        if isHidden{
          picker.isHidden=false
          isHidden=false
        }else if isHidden == false{
            self.picker.isHidden = true
            self.isHidden=true
        }
    }
    
    func countryPhoneCodePicker(_ picker: CountryPicker, didSelectCountryWithName name: String, countryCode: String, phoneCode: String, flag: UIImage) {
        self.phocode.text = phoneCode
//        picker.isHidden=true
//        isHidden=true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
