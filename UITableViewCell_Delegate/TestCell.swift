//
//  TestCell.swift
//  UITableViewCell_Delegate
//
//  Created by dev09 on 25/08/17.
//  Copyright © 2017 dev09. All rights reserved.
//

import UIKit
protocol testCellDelegate: class {
    
  // func rejectBtnTapped(sender: UIButton)
   // func acceptBtnTapped(sender: UIButton)
    
    func rejectBtnTapped(_ tag: Int)
    func acceptBtnTapped(_ tag: Int)
    
}
class TestCell: UITableViewCell {
    @IBOutlet var name: UILabel!
    @IBOutlet var eMail: UILabel!
    
    @IBOutlet var acceptBtnOutlet: UIButton!
    @IBOutlet var rejectBtnOutlet: UIButton!
    weak var delegate: testCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func dataReciver(dictionaryData: NSDictionary)  {
        self.name.text = dictionaryData .value(forKey: "emp_Name") as? String
        self.eMail.text = dictionaryData.value(forKey: "email") as? String
    }
    
    @IBAction func rejectBtnTapped(sender: UIButton){
    
        print("reject button tapped")
        self.delegate?.acceptBtnTapped(sender.tag)
    
    }
    @IBAction func acceptBtnTapped(sender: UIButton){
        print("accept button tapped")
        self.delegate?.acceptBtnTapped(sender.tag)

    }
    
}
//     func didPressButton(_ tag: Int)



