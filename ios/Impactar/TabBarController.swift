//
//  TabBarController.swift
//  Impactar
//
//  Created by Davi Rodrigues on 13/04/16.
//  Copyright © 2016 Davi Rodrigues. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Inicializa os títulos dos icones da tabBar
        self.tabBar.items![0].title = "Fiscalizar"
        self.tabBar.items![1].title = "Denunciar"
        self.tabBar.items![2].title = "Social"
        self.tabBar.items![3].title = "Mais"
        
        //Inicializa os icones da tabBar
        self.tabBar.items![0].image = UIImage(named:"Fiscalizar")
        self.tabBar.items![1].image = UIImage(named:"Denunciar")
        self.tabBar.items![2].image = UIImage(named:"Social")
        self.tabBar.items![3].image = UIImage(named:"Mais")
        
        self.tabBar.barTintColor = Styles.azulImpacta
        self.tabBar.tintColor = Styles.cinzaTintColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}
