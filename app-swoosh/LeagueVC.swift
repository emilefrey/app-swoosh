//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Emile Frey on 8/3/17.
//  Copyright © 2017 Emile Frey. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()

        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCsegue", sender: self)
    }
    
    
    @IBOutlet weak var nextBtn: BorderButton!

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "Mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "Womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "Co-Ed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeauge = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
