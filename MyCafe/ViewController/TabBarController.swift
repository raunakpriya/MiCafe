//
//  TabBarController.swift
//  MyCafe
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let cafeViewController = CafeViewController()
        let sightViewController = SightViewController()
        
        cafeViewController.title = "Cafes"
        
        sightViewController.title = "Sights"
        
        self.setViewControllers([cafeViewController, sightViewController], animated: false)
        
        guard let items = self.tabBar.items else { return }
        
        let images = ["ticket", "camera"]
        
        for x in 0...1 {
            items[x].image = UIImage(systemName: images[x])
        }
    }
    

}
