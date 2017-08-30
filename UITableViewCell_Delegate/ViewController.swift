//
//  ViewController.swift
//  UITableViewCell_Delegate
//
//  Created by dev09 on 25/08/17.
//  Copyright © 2017 dev09. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, testCellDelegate{
    
    
    
    

    @IBOutlet var tableView: UITableView!
    
  //  let dict: NSDictionary = [:]
    var arrEmpData: [Any] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dictEmp1 = ["emp_Name": "Amandeep Singh","email":"aman@gmail.com","con_Number":"8477094784"]
        let dictEmp2 = ["emp_Name": "Rajkumar Soni","email":"rajkumar@gmail.com","con_Number":"6248489456"]
        let dictEmp3 = ["emp_Name": "Burhan Vani","email":"vani@gmail.com","con_Number":"9825648455"]
        let dictEmp4 = ["emp_Name": "Rajdeep sardesai","email":"rajdeep@gmail.com","con_Number":"1528629"]
        let dictEmp5 = ["emp_Name": "Anna Bella","email":"annBella@gmail.com","con_Number":"248627856"]
        let dictEmp6 = ["emp_Name": "Zyan Malik","email":"zyan@gmail.com","con_Number":"248678827"]
        let dictEmp7 = ["emp_Name": "Golu Sharma","email":"sharmaji@gmail.com","con_Number":"328678757866"]
        let dictEmp8 = ["emp_Name": "Omprakash Yadav","email":"oy@gmail.com","con_Number":"8477094784"]
        let dictEmp9 = ["emp_Name": "Ramlaal Jat","email":"ramlalathehero@gmail.com","con_Number":"9287245669"]
        let dictEmp10 = ["emp_Name": "RamRahim Baba","email":"abc@gmail.com","con_Number":"9287241556"]
        let dictEmp11 = ["emp_Name": "Rajkamal Yadav","email":"rajkamal@gmail.com","con_Number":"8881562784"]
        let dictEmp12 = ["emp_Name": "Rinku Bhya","email":"bhyabhya@gmail.com","con_Number":"5278672554"]
        let dictEmp13 = ["emp_Name": "Hariom Pawar","email":"pawarsahab@gmail.com","con_Number":"1876824577"]
        let dictEmp14 = ["emp_Name": "Nilkamal Srisadar","email":"nilkamal@gmail.com","con_Number":"2468768979567"]
        let dictEmp15 = ["emp_Name": "Asaram ","email":"asarambapu@gmail.com","con_Number":"29558784555"]
        let dictEmp16 = ["emp_Name": "christian Bell","email":"cbell@gmail.com","con_Number":"7820487555"]
        let dictEmp17 = ["emp_Name": "Hemant shukla","email":"hemantthestar@gmail.com","con_Number":"768247755"]


        
        arrEmpData = [dictEmp1,dictEmp2,dictEmp3,dictEmp4,dictEmp5,dictEmp6,dictEmp7,dictEmp8,dictEmp9,dictEmp10,dictEmp11,dictEmp12,dictEmp13,dictEmp14,dictEmp15,dictEmp16,dictEmp17]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrEmpData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myIdentifier = "SimpleTableItem"
        var cell: TestCell!
        
     //   self.delegate = self as? viewControllerDelegate
        cell = tableView.dequeueReusableCell(withIdentifier: myIdentifier, for: indexPath) as! TestCell
        cell.delegate = self

        let obj = arrEmpData [indexPath.row]
        cell .dataReciver(dictionaryData: obj as! NSDictionary)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dvc: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewControllerID") as! DetailViewController
        _ = indexPath.row
        dvc.dataAcceptorDict = arrEmpData[indexPath.row] as! [String : String] as NSDictionary
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
    func rejectBtnTapped(_ tag: Int)
    {
        
        let alert = UIAlertController(title: "Request Status : ",message: "rejected", preferredStyle: .alert)
        alert.addAction(UIAlertAction (title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        alert.addAction(UIAlertAction (title: "Redirect Button", style: UIAlertActionStyle.default, handler: { (action) in
            
            let _: InitialViewController = self.storyboard?.instantiateViewController(withIdentifier: "InitialStoryBoard") as! InitialViewController
            self.navigationController?.popViewController(animated: true)
        }))
        
        
        self.present(alert, animated: true, completion: nil)

    }
    func acceptBtnTapped(_ tag: Int)
    {
        let newAlert = UIAlertController (title: "Request Status : ", message: "accepted",  preferredStyle: .alert)
        newAlert.addAction(UIAlertAction (title: "cancel", style: UIAlertActionStyle.cancel, handler: nil ))
        
        newAlert.addAction(UIAlertAction (title: "Redirect Button", style: UIAlertActionStyle.default, handler: {
            (action) in
            
            let _: InitialViewController = self.storyboard?.instantiateViewController(withIdentifier: "InitialStoryBoard") as! InitialViewController
            self.navigationController?.popViewController(animated: true)
        }))
        self.present (newAlert, animated: true, completion: nil)
        
    }
}












