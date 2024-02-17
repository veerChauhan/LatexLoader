//
//  ExampleListViewController.swift
//  LatexKatexView_Example
//
//  Created by Ravi Ranjan on 17/02/24.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

class ExampleListViewController: UIViewController {

    @IBOutlet weak var exampleTable: UITableView!
    
    var exampleData : [ExampleType] = [.complexFormula,.complextFormulWithText,.htmlWithImage,.mathJxFormula, .normalText, .multipleData]
    override func viewDidLoad() {
        super.viewDidLoad()
                
        configureCell()
    }
    private func configureCell() {
        self.exampleTable.register(UINib(nibName: "ExampleOptionCell", bundle: Bundle.main), forCellReuseIdentifier: "ExampleOptionCell")
        self.exampleTable.delegate = self
        self.exampleTable.dataSource = self
    }
}


extension ExampleListViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exampleData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExampleOptionCell", for: indexPath) as? ExampleOptionCell else {return UITableViewCell()}
        cell.configureData(title: exampleData[indexPath.row].title)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let story = UIStoryboard(name: "Main", bundle: Bundle.main)
//        
//        
//        guard exampleData[indexPath.row] == .multipleData else {
//            guard let controller = story.instantiateViewController(withIdentifier: "SIngleResultViewViewController") as? SIngleResultViewViewController else {return}
//            controller.requestData = exampleData[indexPath.row]
//            
//            self.navigationController?.pushViewController(controller, animated: true)
//            return
//        }
//        
//       let controller = MViewController()
//        
//        self.navigationController?.pushViewController(controller, animated: true)
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
