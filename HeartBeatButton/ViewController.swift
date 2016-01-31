//
//  ViewController.swift
//  HeartBeatButton
//
//  Created by Eliasz Sawicki on 31/01/16.
//  Copyright © 2016 Eliasz Sawicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var heartButton: UIButton!
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        setupButton()
    }
    
    private func setupButton() {
        let heartImage = UIImage(named: "heart")
        self.heartButton = UIButton(frame: CGRectZero)
        self.heartButton.frame.size = CGSizeMake(heartImage!.size.width, heartImage!.size.height)
        self.heartButton.center = self.view.center
        self.heartButton.setImage(heartImage, forState: .Normal)
        self.heartButton.addTarget(self, action: "performHeartBeat:", forControlEvents: .TouchUpInside)
        self.view.addSubview(self.heartButton)
    }
    
    func performHeartBeat(sender: UIButton) {
        let imageView = UIImageView(frame: self.heartButton.frame)
        imageView.image = UIImage(named: "heart_border")
        self.view.addSubview(imageView)
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            imageView.transform = CGAffineTransformMakeScale(3,3)
            imageView.alpha = 0
            }) { (completed) -> Void in
                imageView.removeFromSuperview()
        }
    }
    
    
}

