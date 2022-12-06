//
//  PseudoViewController.swift
//  TroisEcransJeu
//
//  Created by Etudiant on 06/12/2022.
//

import UIKit

class PseudoViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var pseudoTextField: UITextField!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "3 ecrans"
        
        self.pseudoTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func editingDidEndAction(_ sender: UITextField) {
        print("editing text")
    }
    
    @IBAction func onNextTouchUpInside(_ sender: UIButton) {
        print("next")
        guard let pseudo = pseudoTextField.text else {
            return
        }
        
        let game = GameViewController.newInstance(message: pseudo)
        self.navigationController?.pushViewController(game, animated: true)
    }
    
    @IBAction func onEditingDidChange(_ sender: UITextField) {
        print("editing did change")
        print(sender.text!)
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
