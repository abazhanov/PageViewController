//
//  ViewController.swift
//  PageViewController
//
//  Created by Artem Bazhanov on 21.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startPresentation()
    }
    
    func startPresentation() {
        if let pageViewController = storyboard?.instantiateViewController(
            withIdentifier: "PageViewController") as? PageViewController {
            pageViewController.modalPresentationStyle = .fullScreen
            present(pageViewController, animated: true, completion: nil)
        }
    }
}

