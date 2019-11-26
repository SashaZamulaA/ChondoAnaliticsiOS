//
//  MenuViewController.swift
//  ChondoAnalitics2
//
//  Created by ZamulaAleksandr on 25.11.2019.
//  Copyright © 2019 Alex Ltd. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case home
    case addResult
    
}

class MenuViewController: UITableViewController {

    var didTapMenuType: ((MenuType) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else {return}
        dismiss (animated: true){ [weak self] in
            print ("Dismissing: \(menuType)")
            
            self?.didTapMenuType?(menuType)
        }
    }

}
