//
//  HomeViewController.swift
//  HomePage 1.0
//
//  Created by Erencan Malagic on 9.11.2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Bundle.main.loadNibNamed("HomeViewController", owner: self, options: nil)
    
        
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
