//
//  ViewController.swift
//  haptic_app
//
//  Created by Mark Ma on 4/10/21.
//

import UIKit
import CoreHaptics

class ViewController: UIViewController {

    @IBOutlet weak var testingButton: UILabel!
    //private var engine: CHHapticEngine?
    var hapticManager = HapticManager()
    var hapticsAvailable: Bool {
        CHHapticEngine.capabilitiesForHardware().supportsHaptics
    }

    var hapticSoft = UIImpactFeedbackGenerator(style: .soft)
    var hapticLight = UIImpactFeedbackGenerator(style: .light)
    var hapticMedium = UIImpactFeedbackGenerator(style: .medium)
    var hapticRigid = UIImpactFeedbackGenerator(style: .rigid)
    var hapticHeavy = UIImpactFeedbackGenerator(style: .heavy)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //hapticManager = HapticManager()
    }
    
    /*
    @IBAction func softFeedback(_ sender: Any) {
        self.hapticSoft.impactOccurred()
    }
    */
    
    
    @IBAction func lightFeedback(_ sender: Any) {
        //print("light testing")
        self.hapticLight.impactOccurred()
    }
    
    
    @IBAction func mediumFeedback(_ sender: Any) {
        self.hapticMedium.impactOccurred()
    }
    
    @IBAction func rigifFeedback(_ sender: Any) {
        self.hapticRigid.impactOccurred()
    }
    
    @IBAction func heavyFeedback(_ sender: Any) {
        self.hapticHeavy.impactOccurred()
    }
    
    
    @IBAction func testEngine(_ sender: Any) {
        print(hapticsAvailable)
        
        self.hapticManager?.playSlice()
        
    }
    
}

