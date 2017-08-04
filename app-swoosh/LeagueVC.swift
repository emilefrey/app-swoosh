//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Emile Frey on 8/3/17.
//  Copyright © 2017 Emile Frey. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCsegue", sender: self)
    }


}
