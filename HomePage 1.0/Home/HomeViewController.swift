//
//  HomeViewController.swift
//  HomePage 1.0
//
//  Created by Erencan Malagic on 10.11.2024.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let model: [HomeModel] = [
        HomeModel(img: UIImage(named: "img1")!, title: "Title1", subtitle: "SubTitle1"),
        HomeModel(img: UIImage(named: "img2")!, title: "Title2", subtitle: "SubTitle2"),
        HomeModel(img: UIImage(named: "img3")!, title: "Title3", subtitle: "SubTitle3"),
        HomeModel(img: UIImage(named: "img1")!, title: "Title4", subtitle: "SubTitle4"),
        HomeModel(img: UIImage(named: "img1")!, title: "Title5", subtitle: "SubTitle5"),
        HomeModel(img: UIImage(named: "img2")!, title: "Title6", subtitle: "SubTitle6"),
        HomeModel(img: UIImage(named: "img1")!, title: "Title7", subtitle: "SubTitle7"),
        HomeModel(img: UIImage(named: "img3")!, title: "Title8", subtitle: "SubTitle8"),
        HomeModel(img: UIImage(named: "img1")!, title: "Title9", subtitle: "SubTitle9")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Bundle.main.loadNibNamed("HomeViewController", owner: self, options: nil)
        
    }
  
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let nib = UINib(nibName: "HomeTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "HomeTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell {
            let item = model[indexPath.row]
            
            // Veriyi hücreye aktar
            if let img = item.img {
                cell.img.image = img
            } else {
                cell.img.image = UIImage(named: "img1")
            }
            
            cell.titleLabel.text = item.title
            cell.subTitleLabel.text = item.subtitle
            
            return cell
        } else {
            // Eğer hücre dequeue edilemezse, varsayılan bir cell döndürebilirsiniz.
            return UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          
        tableView.deselectRow(at: indexPath, animated: true)
          print("false")
          
          let alert = UIAlertController(title: "Cell Selected", message: "false", preferredStyle: .alert)
          alert.addAction(UIAlertAction(title: "OK", style: .default))
          present(alert, animated: true)
      }
    
    
}
