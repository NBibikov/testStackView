//
//  ViewController.swift
//  testStackView
//
//  Created by Nick Bibikov on 2/27/18.
//  Copyright © 2018 Nick Bibikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var stackViewHeightValue: NSLayoutConstraint!
    
    var standartStackViewHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        standartStackViewHeight = view.bounds.height * 0.3 //multiplier
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        stackViewHeightValue.constant = standartStackViewHeight
        view.layoutIfNeeded()
        
    }

    @IBAction func animateItButtonPressed(_ sender: UIButton) {
        
        stackViewHeightValue.constant = stackViewHeightValue.constant == 0 ? standartStackViewHeight : 0
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
}

