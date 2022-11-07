//
//  ViewController.swift
//  pia11v9uikit
//
//  Created by Bill Martensson on 2022-11-07.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var minttexten: UILabel!
    
    @IBOutlet weak var fancytable: UITableView!
    
    var siffra = 0
    
    var people = ["Arne", "Bengt", "Caesar", "David"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        minttexten.text = "Mint"
        
        fancytable.dataSource = self
        fancytable.delegate = self
    }


    
    @IBAction func klickaknapp(_ sender: Any) {
        
        siffra = siffra + 1
        
        
        minttexten.text = String(siffra)
        
        people.append("Banan")
        fancytable.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "raden") as! personTableViewCell
        
        cell.firstnameLabel.text = people[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("KLICK PÅ RAD!!")
        print(people[indexPath.row])
    }
    
}

/*
 
 List(people) { person in
    Text(person)
 }
 
 */
