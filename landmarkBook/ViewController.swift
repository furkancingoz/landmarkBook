//
//  ViewController.swift
//  landmarkBook
//
//  Created by Furkan Cingöz on 9.09.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        var landmarkNames = [String]()
        landmarkNames.append("Prag")
        landmarkNames.append("Grate Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonhege")
        landmarkNames.append("Taj Mahal")
      
        var landmarkImage = [UIImage]()
        landmarkImage.append(UIImage(named: "prag")!)
        landmarkImage.append(UIImage(named: "gratewall")!)
        landmarkImage.append(UIImage(named: "kremlin")!)
        landmarkImage.append(UIImage(named: "stonhege")!)
        landmarkImage.append(UIImage(named: "tacmahal")!)
        
    
        
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"  ESKİ VERSİYONU BU
        var content = cell.defaultContentConfiguration()
        content.text = "tableview"
        content.secondaryText = "test"
        cell.contentConfiguration = content
        return cell
    }
    
}

