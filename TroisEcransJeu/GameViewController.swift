//
//  GameViewController.swift
//  TroisEcransJeu
//
//  Created by Etudiant on 06/12/2022.
//

import UIKit

class GameViewController: UIViewController {
    var pseudo: String!
    @IBOutlet var nomDuJeuTextField: UITextField!
    @IBOutlet var goButton: UIButton!
    
    class func newInstance(message: String) -> GameViewController {
        let inst = GameViewController()
        inst.pseudo = message
        
        return inst
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func onGoTouch(_ sender: UIButton) {
        guard let nomDuJeu = nomDuJeuTextField.text else {
            return
        }
        
        let result = ResultViewController.newInstance(pseudo: pseudo, nomDuJeu: nomDuJeu)
        self.navigationController?.pushViewController(result, animated: true)

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
