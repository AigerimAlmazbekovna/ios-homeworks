//
//  PostViewController.swift
//  popytka1
//
//  Created by Айгерим on 12.02.2024.
//

import UIKit

class PostViewController: UIViewController {
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: nil, action: #selector(buttonPressed(_:)))
    
}
    @objc func buttonPressed(_ sender: UIButton) {
        let infoViewController = InfoViewController()
        self.navigationController?.pushViewController(infoViewController, animated: true)
        
        
    }
}

