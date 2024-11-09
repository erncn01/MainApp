//
//  TabBarControllerViewController.swift
//  HomePage 1.0
//
//  Created by Erencan Malagic on 9.11.2024.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ViewController'ları oluşturun
        let vc1 = HomeViewController()
        let vc2 = SettingsViewController()
        let vc3 = UploadViewController()
        
        // Her bir ViewController'a title ve resim (ikon) atayın
        vc1.title = "Home"
        vc1.tabBarItem.image = UIImage(systemName: "house") // Burada bir SF Symbol kullanıldı
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house") // Seçili durumda gösterilecek simge

        vc2.title = "Settings"
        vc2.tabBarItem.image = UIImage(systemName: "gear")
        vc2.tabBarItem.selectedImage = UIImage(systemName: "gear")

        vc3.title = "Upload"
        vc3.tabBarItem.image = UIImage(systemName: "square.and.arrow.up")
        vc3.tabBarItem.selectedImage = UIImage(systemName: "square.and.arrow.up")
        
        // ViewController'ları TabBarController'a ekleyin
        self.viewControllers = [vc1, vc2, vc3]
    }
}
