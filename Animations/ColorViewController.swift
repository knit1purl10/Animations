//
//  ColorViewController.swift
//  Animations
//
//  Created by Olivia Hon on 10/30/18.
//  Copyright © 2018 Olivia Hon. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.3) {
            self.view.backgroundColor = UIColor.random()
        }
    }

}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
    
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(displayP3Red: CGFloat.random(), green: CGFloat.random(), blue: CGFloat.random(), alpha: 1)
    }
}
