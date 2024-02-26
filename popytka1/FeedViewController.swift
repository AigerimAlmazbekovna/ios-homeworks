//
//  FeedViewController.swift
//  popytka1
//
//  Created by Айгерим on 12.02.2024.
//

import UIKit

class FeedViewController: UIViewController {

    private lazy var actionButton: UIButton = {
           let button = UIButton()
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("Перейти", for: .normal)
           button.setTitleColor(.systemBlue, for: .normal)
           
           return button
       }()

       override func viewDidLoad() {
           super.viewDidLoad()
           
           view.addSubview(actionButton)
           
           let safeAreaLayoutGuide = view.safeAreaLayoutGuide
           NSLayoutConstraint.activate([
               actionButton.leadingAnchor.constraint(
                   equalTo: safeAreaLayoutGuide.leadingAnchor,
                   constant: 20.0
               ),
               actionButton.trailingAnchor.constraint(
                   equalTo: safeAreaLayoutGuide.trailingAnchor,
                   constant: -20.0
               ),
               actionButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
               actionButton.heightAnchor.constraint(equalToConstant: 44.0)
           ])
           
           actionButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
       }
       
       @objc func buttonPressed(_ sender: UIButton) {
           let postViewController = PostViewController()
           
           postViewController.modalTransitionStyle = .coverVertical // flipHorizontal
           postViewController.modalPresentationStyle = .fullScreen // pageSheet
           
           present(postViewController, animated: true)
       }
   }
