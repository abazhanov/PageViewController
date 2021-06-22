//
//  PageViewController.swift
//  PageViewController
//
//  Created by Artem Bazhanov on 22.06.2021.
//

import UIKit

class PageViewController: UIPageViewController {
    let presentScreenContent = [
        "Первая страница",
        "Вторая страница",
        "Третья страница",
        "Четвертая страница"
    ]
    
    let imageArray = ["🥝", "🍅", "🥥", "🍊"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self

        if let contentViewController = showViewControllerAtIndex(0) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        guard index >= 0 else { return nil }
        guard index < imageArray.count else { return nil }
        guard let contentViewController = storyboard?.instantiateViewController(
                withIdentifier: "ContentViewController") as? ContentViewController else { return nil }
        
        contentViewController.presentText = presentScreenContent[index]
        contentViewController.image = imageArray[index]
        contentViewController.numberOfPages = presentScreenContent.count
        contentViewController.currentPage = index
        
        return contentViewController
    }

}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber -= 1
        
        return showViewControllerAtIndex(pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber += 1
        
        return showViewControllerAtIndex(pageNumber)
    }
    
    
}
