//
//  ViewController.swift
//  landmarkBook
//
//  Created by Furkan Cingöz on 9.09.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var landmarkNames = [String]()
    var landmarkImage = [UIImage]()
    @IBOutlet weak var tableView: UITableView!
    
    var chosenName = ""
    var chosenImage = UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        landmarkNames.append("Prag")
        landmarkNames.append("Grate Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonhege")
        landmarkNames.append("Taj Mahal")
        
        
        landmarkImage.append(UIImage(named: "prag")!)
        landmarkImage.append(UIImage(named: "gratewall")!)
        landmarkImage.append(UIImage(named: "kremlin")!)
        landmarkImage.append(UIImage(named: "stonhege")!)
        landmarkImage.append(UIImage(named: "tacmahal")!)
        
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"  ESKİ VERSİYONU BU
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenName = landmarkNames[indexPath.row]
        chosenImage = landmarkImage[indexPath.row]
        performSegue(withIdentifier: "toDetailsVc", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVc" {
            let desitnationVC = segue.destination as! toDetailsVc
            desitnationVC.selecedLandmarkImage = chosenImage
            desitnationVC.selectedLandmarkName = chosenName
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}

