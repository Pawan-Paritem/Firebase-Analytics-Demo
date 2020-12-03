//
//  DemoAnalytics.swift
//  DemoFirebaseAnalytics
//
//  Created by Pawan  on 23/11/2020.
//

import UIKit
import Firebase

class DemoAnalytics: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Analytics.logEvent(AnalyticsEventAppOpen, parameters: nil)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let controller = SecondViewController()
        controller.modalPresentationStyle = .overCurrentContext
        self.present(controller, animated: true, completion: nil)
        
      //  fatalError()
    }
}
