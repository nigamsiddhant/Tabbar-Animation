//
//  ViewController.swift
//  TabAnimations
//
//  Created by Siddhant on 22/10/19.
//  Copyright © 2019 Siddhant. All rights reserved.
//

import UIKit
class ViewController: ColorMatchTabsViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorMatchTabDataSource = self
        // Do any additional setup after loading the view.
    }
}

class StubContentViewControllersProvider {
    
       static let viewControllers: [UIViewController] = {
           let productsViewController = ViewController2()
           
           let venuesViewController = ViewController2()
           
           let reviewsViewController = ViewController2()
           
           let usersViewController = ViewController2()
           
           return [productsViewController, venuesViewController, reviewsViewController, usersViewController]
       }()
}

extension ViewController: ColorMatchTabsViewControllerDataSource {
     func numberOfItems(inController controller: ColorMatchTabsViewController) -> Int {
           return TabItemsProvider.items.count
       }
       
       func tabsViewController(_ controller: ColorMatchTabsViewController, viewControllerAt index: Int) -> UIViewController {
           return StubContentViewControllersProvider.viewControllers[index]
       }
       
       func tabsViewController(_ controller: ColorMatchTabsViewController, titleAt index: Int) -> String {
           return TabItemsProvider.items[index].title
       }
       
       func tabsViewController(_ controller: ColorMatchTabsViewController, iconAt index: Int) -> UIImage {
           return TabItemsProvider.items[index].normalImage
       }
       
       func tabsViewController(_ controller: ColorMatchTabsViewController, hightlightedIconAt index: Int) -> UIImage {
           return TabItemsProvider.items[index].highlightedImage
       }
       
       func tabsViewController(_ controller: ColorMatchTabsViewController, tintColorAt index: Int) -> UIColor {
           return TabItemsProvider.items[index].tintColor
       }
}



