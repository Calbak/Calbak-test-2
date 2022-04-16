//
//  EditProfileViewController.swift
//  Calbak
//
//  Created by 김인영 on 2022/04/08.
//

import UIKit

protocol EditProfileDelegate: AnyObject{
    func changeProfile(text: String?, introText: String?)
}

class EditProfileViewController: UIViewController {
    
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var introTextField: UITextField!
    
    weak var delegate: EditProfileDelegate?
    var userName: String?
    var introText: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    private func configureView(){
        if let userName = userName {
            self.NameTextField.text = userName
        }
        if let introText = introText {
            self.introTextField.text = introText
        }
    }
    @IBAction func BtnChange(_ sender: UIButton) {
        self.delegate?.changeProfile(text: self.NameTextField.text, introText: self.introTextField.text)
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func BtnEditPicture(_ sender: UIBarButtonItem) {
    }
}
