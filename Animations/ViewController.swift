//
//  ViewController.swift
//  Animations
//
//  Created by Olivia Hon on 10/30/18.
//  Copyright © 2018 Olivia Hon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pinchView: UIView!
    @IBOutlet weak var effectView: UIVisualEffectView!
    
    var effect: UIVisualEffect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        effect = effectView.effect
        effectView.effect = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func handlePinch(recognizer: UIPinchGestureRecognizer) {
        self.view.addSubview(pinchView)
        self.pinchView.center = self.view.center
        self.pinchView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.pinchView.alpha = 0
        
        UIView.animate(withDuration: 0.2, animations: {self.effectView.effect = self.effect
            self.pinchView.alpha = 1
            self.pinchView.transform = CGAffineTransform.identity
        })
    }
    
    
    @IBAction func handleCancel(_ sender: Any) {
        
        UIView.animate(withDuration: 0.2, animations: {
            self.pinchView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.pinchView.alpha = 0
            self.effectView.effect = nil
        }, completion: { _ in
            self.pinchView.removeFromSuperview()
        })
    }
}

