//
//  FiscalizarNavVC.swift
//  Impactar
//
//  Created by Davi Rodrigues on 13/04/16.
//  Copyright © 2016 Davi Rodrigues. All rights reserved.
//

import UIKit

class FiscalizarNavVC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Inicializa cor da navigationBar
        //self.navigationBar.barTintColor = Styles.azulImpacta
        
        //self.navigationBar.tintColor = Styles.cinzaTintColor
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    

}
