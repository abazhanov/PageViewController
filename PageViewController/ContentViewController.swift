//
//  ContentViewController.swift
//  PageViewController
//
//  Created by Artem Bazhanov on 22.06.2021.
//

import UIKit

class ContentViewController: UIViewController {
    @IBOutlet weak var presentTextLabel: UILabel!
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var presentText = ""
    var image = ""
    var currentPage = 0
    var numberOfPages = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presentTextLabel.text = presentText
        imageLabel.text = image
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage
    }
    


}
