//
//  ResultViewController.swift
//  TroisEcransJeu
//
//  Created by Etudiant on 06/12/2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var labelPseudo: UILabel!
    @IBOutlet var playButton: UIButton!
    
    var pseudo: String!
    var nomDuJeu: String!
    
    class func newInstance(pseudo: String, nomDuJeu: String) -> ResultViewController {
        let inst = ResultViewController()
        
        inst.pseudo = pseudo
        inst.nomDuJeu = nomDuJeu
        
        return inst
    }
    
    override func viewDidLoad() {
        
        self.labelPseudo.text = "Salut \(pseudo!)"
        self.playButton.setTitle("Play \(nomDuJeu!)", for: UIControl.State.normal)

        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
