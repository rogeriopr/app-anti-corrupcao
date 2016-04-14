//
//  DenunciarViewController.swift
//  Impactar
//
//  Created by Davi Rodrigues on 13/04/16.
//  Copyright © 2016 Davi Rodrigues. All rights reserved.
//

import UIKit

class DenunciarViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let reuseIdentifier = "denunciaCell"
    
    let sectionsTitle: [String] = ["Podemos começar? \n Informe os dados relacionados a localização da irregularidade", "Informe os dados relacionados a localização da irregularidade", "Informações adicionais:"]
    let sectionsFooter: [String] = ["Escolha o tipo de infração que melhor se encaixa com a irregularidade"]

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
        case 0:
            return 3
        case 1:
            return 1
        case 2:
            return 2
        default:
            return 0
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath) as! DenunciarTableViewCell
        
        
        if(indexPath.section == 0) {
            
            if(indexPath.row == 0) {
                cell.cellLabel.text = "Endereço"
                cell.cellTextField.placeholder = "Rua das Andorinhas, Bairro dos Sabiás"
            } else if(indexPath.row == 1) {
                cell.cellLabel.text = "Cep"
                cell.cellTextField.placeholder = "12345-678"
            } else if(indexPath.row == 2) {
                cell.cellLabel.text = "Nome do local"
                cell.cellTextField.placeholder = "Escola das Cacatuas"
            }
            
        } else if(indexPath.section == 1) {
            
            cell.cellLabel.text = "Tipo de inflação"
            cell.cellTextField.placeholder = "Desvio de verba"
            
        } else if(indexPath.section == 2) {
            
            if(indexPath.row == 0) {
                cell.cellLabel.text = "Comentários"
                cell.cellTextField.placeholder = "Seu comentário aqui"
            } else if(indexPath.row == 1) {
                cell.cellLabel.text = "Anexos"
                cell.cellTextField.placeholder = "Adicionar anexos"
            }
            
        }
        
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionsTitle[section]
        
    }
    
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        if(section == 1) {
            return sectionsFooter[0]
        }
        
        return ""
        
    }
    
}
