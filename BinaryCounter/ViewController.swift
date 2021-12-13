//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Abdulmajeed Shukayri on 13/12/2021.
//

import UIKit

class ViewController: UIViewController, MyBinaryDelegate {
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myTotalLabel: UILabel!
    var total = 0
    
    let powers = [0,1,2,3,4,5,6,7,8,9,10]
    func totalIncreased(value: Int) {
        total = total + value
        myTotalLabel.text = "Total: \(total)"
    }
    
    func totalDecresed(value: Int) {
        total = total - value
        myTotalLabel.text = "Total:\(total)"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        self.myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCustomeCell")
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomeCell", for: indexPath) as! MyCustomCell
        cell.myNumLabel.text = "\(pow(10, powers[indexPath.row]))"
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        powers.count
    }
}

