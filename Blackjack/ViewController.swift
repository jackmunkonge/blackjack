//
//  ViewController.swift
//  Blackjack
//
//  Created by Jack Munkonge on 03/10/2019.
//  Copyright © 2019 MobileDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - UI
    
    func displayBackground() {
        let bgImage = UIImage(named: "blackjack-bg");
        let imageView = UIImageView(frame: self.view.bounds);
        imageView.image = bgImage
        self.view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        displayBackground()
    }
    
    override func viewWillLayoutSubviews() {
        super .viewWillLayoutSubviews()
        self.view.subviews[0].frame = self.view.bounds;
    }
}

