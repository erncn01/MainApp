//
//  ViewController.swift
//  HomePage 1.0
//
//  Created by Erencan Malagic on 8.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    func didTapButton() {
        
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
