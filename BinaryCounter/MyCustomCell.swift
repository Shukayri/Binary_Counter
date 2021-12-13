//
//  MyCustomCell.swift
//  BinaryCounter
//
//  Created by Abdulmajeed Shukayri on 13/12/2021.
//

import UIKit

class MyCustomCell: UITableViewCell {

    var delegate : MyBinaryDelegate?
    @IBOutlet weak var myNumLabel: UILabel!
    
    @IBAction func plustBtn(_ sender: UIButton) {
        delegate?.totalIncreased(value: Int(myNumLabel.text!)!)
    }
    
    @IBAction func minusBtn(_ sender: UIButton) {
        delegate?.totalDecresed(value: Int(myNumLabel.text!)!)
        
    }

}
