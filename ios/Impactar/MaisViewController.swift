//
//  MaisViewController.swift
//  Impactar
//
//  Created by Davi Rodrigues on 13/04/16.
//  Copyright © 2016 Davi Rodrigues. All rights reserved.
//

import UIKit

class MaisViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let sliderIdentifierCell = "sliderCell"
    let reuseIdentifier = "maisCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: TableViewDelegate
    
    //MARK: TableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section) {
        case 2:
            return 2
        default:
            return 1
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if(indexPath.section == 0) {
            let cell = tableView.dequeueReusableCellWithIdentifier(sliderIdentifierCell) as! SliderTableViewCell
            return cell
        } else if(indexPath.section == 1){
            let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as! MaisTableViewCell
            cell.maisLabel.text = "Calculadora da corrupção"
            return cell
        } else if(indexPath.section == 2 && indexPath.row == 0) {
            let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as! MaisTableViewCell
            cell.maisLabel.text = "impactar.com.br"
            return cell
        }
        
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as! MaisTableViewCell
        cell.maisLabel.text = "Desenvolvedores"
        return cell
    }
    /*
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerLabel = UILabel(frame: CGRectMake(8, 8, tableView.frame.width, 2000))
        
        headerLabel.text = "Aeoo"
        headerLabel.font = UIFont(name: "Helvetica-Light", size: 16)
        headerLabel.sizeToFit()
        
        let headerView = UIView()
        headerView.addSubview(headerLabel)
        
        return headerView
    }
    */
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if(section == 0) {
            return "LOCALIZAÇÃO"
        } else if(section == 1) {
            return "CALCULADORA"
        }
        return "SOBRE"
        
    }
    
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        if(section == 0) {
            return "Distância de visualização nos mapas"
        } else if(section == 1) {
            return "Descubra quanto a corrupção impacta na sua vida financeira"
        }
        return ""
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return self.view.layer.frame.height/10
    }

}
