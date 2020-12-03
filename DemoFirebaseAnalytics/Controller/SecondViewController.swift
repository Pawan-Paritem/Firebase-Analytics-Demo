//
//  SecondViewController.swift
//  DemoFirebaseAnalytics
//
//  Created by Pawan  on 23/11/2020.
//

import UIKit
import Firebase

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        fatalError()
    }
    
    @IBAction func videoClickTapped(_ sender: UIButton) {
        Analytics.logEvent("Press_VideoButton", parameters: nil)
        print("Press_VideoButton")
    }
    
    @IBAction func audioClickTapped(_ sender: UIButton) {
        Analytics.logEvent("Press_AudioButton", parameters: nil)
        print("Press_AudioButton")
    }
}
