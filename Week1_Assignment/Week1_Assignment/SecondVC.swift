//
//  SecondVC.swift
//  Week1_Assignment
//
//  Created by JH on 2022/10/07.
//

import UIKit

class SecondVC: UIViewController {

        private let bigLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 90, y: 120, width: 250, height: 30))
            label.text = "카카오톡을 시작합니다"
            label.textColor = .black
            label.font = .boldSystemFont(ofSize: 24)
            return label
        }()
    
    private let emailTextField: UITextField = {
        let TextField = UITextField(frame: CGRect(x: 30, y: 300, width: 300, height: 30))
        TextField.backgroundColor = .white
        TextField.placeholder = "이메일 또는 전화번호"
        return TextField
    }()
    
    
    private let passwordTextField: UITextField = {
        let TextField = UITextField(frame: CGRect(x: 30, y: 360, width: 300, height: 30))
        TextField.backgroundColor = .white
        TextField.placeholder = "비밀번호"
        TextField.isSecureTextEntry = true
        return TextField
    }()
    
    private let passwordCheckTextField: UITextField = {
        let TextField = UITextField(frame: CGRect(x: 30, y: 420, width: 300, height: 30))
        TextField.backgroundColor = .white
        TextField.placeholder = "비밀번호 확인"
        TextField.isSecureTextEntry = true
        return TextField
    }()
    
    
    private let emailUnderLine: UIView = {
        let view = UIView(frame: CGRect(x: 28, y: 340, width: 320, height: 1))
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private let passwordUnderLine: UIView = {
        let view = UIView(frame: CGRect(x: 28, y: 400, width: 320, height: 1))
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private let passwordCheckUnderLine: UIView = {
        let view = UIView(frame: CGRect(x: 28, y: 460, width: 320, height: 1))
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private let signupButton: UIButton = {
       let button = UIButton(frame: CGRect(x: 30, y: 510, width: 320, height: 40))
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(touchUpSignupButton), for: .touchUpInside)
        return button
    }()
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            view.addSubview(bigLabel)
            view.addSubview(emailTextField)
            view.addSubview(passwordTextField)
            view.addSubview(emailUnderLine)
            view.addSubview(passwordUnderLine)
            view.addSubview(passwordCheckTextField)
            view.addSubview(passwordCheckUnderLine)
            view.addSubview(signupButton)
        }

    
    
    private func presentToThirdVC(){
        let thirdVC = ThirdVC()
        thirdVC.modalPresentationStyle = .fullScreen
        
        // if let answer = emailTextField.text{
        //     thirdVC.dataBind(answer: answer)
        // }
        
        guard let answer = emailTextField.text else {return}
        thirdVC.dataBind(answer: answer)
        
        self.present(thirdVC, animated: true)
    }

    
    @objc
    private func touchUpSignupButton(){
        presentToThirdVC()
    }
    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
