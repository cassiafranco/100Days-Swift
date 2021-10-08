//
//  ViewController.swift
//  Challenge2
//
//  Created by cassia franco on 17/08/21.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var guessTextField: UITextField!
    
    @IBOutlet weak var GameOver: UIImageView!
    @IBOutlet weak var hangmanImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", image: "restart.png", primaryAction: <#T##UIAction?#>, menu: <#T##UIMenu?#>)
        
    }
    
    @IBAction func guessButton(_ sender: Any) {
    }
    
    @IBAction func resetButton(_ sender: Any) {
    }
    
    
}

