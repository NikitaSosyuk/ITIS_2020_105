//
//  ViewController.swift
//  NikitaSosyukHW5
//
//  Created by Nikita Sosyuk on 05.10.2020.
//  Copyright © 2020 Nikita Sosyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var likeButton: UIButton!
    
    var isTapped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        likeButton.setImage(#imageLiteral(resourceName: "like"), for: .normal)
        navigationItem.title = "Instagram"
    }
    
    @IBAction func likeButtonTap(_ sender: UIButton) {
        var image: UIImage = #imageLiteral(resourceName: "liked")
        if isTapped {
            isTapped = false
            image = #imageLiteral(resourceName: "like")
        } else {
            isTapped = true
        }
        //      тут старался отступы красиво сделать, но не уверен, что правильно получилось
        UIView.animate(withDuration: 0.2,
                       animations: {sender.alpha = 0.0},
                       completion: {(finished) in
                        sender.setImage(image, for: .normal)
                        UIView.animate(withDuration: 0.2,
                                       animations: {sender.alpha = 1.0},
                                       completion:nil)})
    }
}
