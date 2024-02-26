//
//  ProfileViewController.swift
//  popytka1
//
//  Created by Айгерим on 12.02.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    let picker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.center = view.center
        
        self.view.addSubview(picker)
    
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
