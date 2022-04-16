//
//  ViewController.swift
//  Calbak
//
//  Created by 김인영 on 2022/04/07.
//

import UIKit

class ViewController: UIViewController, EditProfileDelegate{
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var introText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let EditProfileViewController = segue.destination as? EditProfileViewController{
            EditProfileViewController.delegate = self
            EditProfileViewController.userName = self.userName.text
            EditProfileViewController.introText = self.introText.text
        }
    }
    
    func changeProfile(text: String?, introText: String?){
        if let text = text {
            self.userName.text = text
        }
        if let introText = introText {
            self.introText.text = introText
        }
    }
    @IBAction func editButton(_ sender: UIButton) {
    }
}


