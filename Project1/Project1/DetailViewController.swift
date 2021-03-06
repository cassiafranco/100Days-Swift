//
//  DetailViewController.swift
//  Project1
//
//  Created by cassia franco on 20/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    
    // challenge 3
    var position: (position: Int, total: Int)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assert( selectedImage == selectedImage ,"SHOWWW")

        guard let selectedImage = selectedImage else {
            print("No image provided")
            return
        }
        
        // challenge 3
        guard let position = position else {
            print("No position provided")
            return
        }
        title = selectedImage + " - \(position.position)/\(position.total)"

        navigationItem.largeTitleDisplayMode = .never
        
        imageView.image = UIImage(named: selectedImage)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
