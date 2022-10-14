//
//  SecondVC.swift
//  Week1_Assignment
//
//  Created by JH on 2022/10/07.
//

import UIKit

class SecondVC: UIViewController {

    private let bigLabel: UILabel = {
        let label = UILabel()
        label.text = "카카오톡을 시작합니다"
        label.textAlignment = .center
        label.textColor = .black
        label.font = .systemFont(ofSize: 22)
        return label
    }()
    
    private let emailTextField: UITextField = {
        let TextField = UITextField()
        TextField.backgroundColor = .white
        TextField.placeholder = "이메일 또는 전화번호"
        return TextField
    }()
    
    
    private let passwordTextField: UITextField = {
        let TextField = UITextField()
        TextField.backgroundColor = .white
        TextField.placeholder = "비밀번호"
        TextField.isSecureTextEntry = true
        return TextField
    }()
    
    private let passwordCheckTextField: UITextField = {
        let TextField = UITextField()
        TextField.backgroundColor = .white
        TextField.placeholder = "비밀번호 확인"
        TextField.isSecureTextEntry = true
        return TextField
    }()
    
    private let emailUnderLine: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private let passwordUnderLine: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private let passwordCheckUnderLine: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private lazy var signupButton: UIButton = {
        let button = UIButton()
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 3
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(touchUpSigninButton), for: .touchUpInside)
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
            
            setLayout()
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

    private func popToFirstVC(){
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc
    private func touchUpSigninButton(){
        presentToThirdVC()
        popToFirstVC()
    }
}

extension SecondVC {
    private func setLayout() {
        
        bigLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(40)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(89)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).offset(-89)
            make.height.equalTo(22)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(self.bigLabel.snp.bottom).offset(116)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            make.height.equalTo(48)
        }
        
        emailUnderLine.snp.makeConstraints { make in
            make.top.equalTo(self.emailTextField.snp.bottom)
            make.leading.trailing.equalTo(self.emailTextField)
            make.height.equalTo(1)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(self.emailUnderLine.snp.bottom).offset(10)
            make.leading.trailing.equalTo(self.emailTextField)
            make.height.equalTo(48)
        }
        
        passwordUnderLine.snp.makeConstraints { make in
            make.top.equalTo(self.passwordTextField.snp.bottom)
            make.leading.trailing.equalTo(self.emailTextField)
            make.height.equalTo(1)
        }
        
        passwordCheckTextField.snp.makeConstraints { make in
            make.top.equalTo(self.passwordUnderLine.snp.bottom).offset(10)
            make.leading.trailing.equalTo(self.emailTextField)
            make.height.equalTo(48)
        }
        
        passwordCheckUnderLine.snp.makeConstraints { make in
            make.top.equalTo(self.passwordCheckTextField.snp.bottom)
            make.leading.trailing.equalTo(self.emailTextField)
            make.height.equalTo(1)
        }
        
        signupButton.snp.makeConstraints { make in
            make.top.equalTo(self.passwordCheckUnderLine.snp.bottom).offset(26)
            make.leading.trailing.equalTo(self.emailTextField)
            make.height.equalTo(44)
        }
    }
}
