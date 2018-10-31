//
//  TranslateViewController.swift
//  Animations
//
//  Created by Olivia Hon on 10/30/18.
//  Copyright © 2018 Olivia Hon. All rights reserved.
//

import UIKit

class TranslateViewController: UIViewController {

    @IBOutlet weak var square: UIView!
    @IBOutlet weak var constraint: NSLayoutConstraint!
    
    var translate: CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square.backgroundColor = UIColor.random()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5) {
            self.constraint.constant = self.translate
            if self.translate == 100 {
                self.translate = -100
            } else {
                self.translate = 100
            }
            
            self.view.layoutIfNeeded()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
