//
//  MainController.swift
//  demo@2
//
//  Created by abhishek bhatt on 03/01/18.
//  Copyright © 2018 abhishek bhatt. All rights reserved.
//

import UIKit

class MainController: UIViewController, UITableViewDataSource, UITableViewDelegate

{
   
  
    @IBOutlet weak var TableView1: UITableView!
    //self.heroes = [HeroStats]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib1 = UINib(nibName: "FirstTableViewCell", bundle: nil)
        TableView1.register(nib1, forCellReuseIdentifier: "FristTableVeiwCell")
        let nib2 = UINib(nibName: "SecondTableViewCell", bundle: nil)
        TableView1.register(nib2, forCellReuseIdentifier: "SecondTableViewCell")
        let nib3 = UINib(nibName: "ThirdTableViewCell", bundle: nil)
        TableView1.register(nib3, forCellReuseIdentifier: "ThirdTableVeiwCell")
        /*downloadData {
            self.TableView1.reloadData()
            print("SUCESSFUL")
        }
*/
        TableView1.delegate = self
        TableView1.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if(section == 2 || section == 3)
        {
            return 30
        }else{
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch(indexPath.section){
        case 0:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "FristTableVeiwCell", for: indexPath) as? FirstTableViewCell
            cell1?.cell1View.reloadData()
            return cell1!
            
            
        case 1:
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell2.cell2View.reloadData()
            return cell2
            
        case 1:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "ThirdTableCell", for: indexPath) as! ThirdTableViewCell
            cell3.cell3View.reloadData()
            return cell3
            
            
        default: let cell2 = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
        cell2.cell2View.reloadData()
        return cell2
            
       
        }
    }
    
  
    
  /*  func downloadData(completed: @escaping () -> ()){
        let url = URL(string: "https://api.opendota.com/api/heroStats")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                do {
                    self.heroes = try JSONDecoder().decode([HeroStats].self, from: data!)
                    
                    DispatchQueue.main.async {
                        completed()
                    }
                }
                catch {
                    print("error")
                }
            }
            }.resume()


}*/

}
