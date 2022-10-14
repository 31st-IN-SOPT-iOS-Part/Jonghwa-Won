//
//  ViewController.swift
//  Week1_Assignment
//
//  Created by JH on 2022/10/07.
//

import UIKit
import SnapKit

class FirstVC: UIViewController {
    
    private let bigLabel: UILabel = {
        let label = UILabel()
        label.text = "카카오톡을 시작합니다"
        label.textColor = .black
        label.font = .systemFont(ofSize: 22)
        label.textAlignment = .center
        return label
    }()
    
    
    private let smallLabel: UILabel = {
        let label = UILabel()
        label.text = "사용하던 카카오계정이 있다면 \n 이메일 또는 전화번호로 로그인해 주세요."
        label.numberOfLines = 0
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15)
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
    
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("카카오계정 로그인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 3
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(touchuploginButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var signupButton: UIButton = {
        let button = UIButton()
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 3
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(touchupSinginButton), for: .touchUpInside)
        return button
    }()
    
    private let findLabel: UILabel = {
        let label = UILabel()
        label.text = "카카오계정 또는 비밀번호 찾기"
        label.textColor = .systemGray
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 13)
        return label
    }()
    
    @objc
    private func touchuploginButton(){
        presentToThirdVC()
    }
    
    @objc
    private func touchupSinginButton(){
        pushToSecondVC()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundColor()
        setLayout()
    }
    
    private func presentToThirdVC(){
        let thirdVC = ThirdVC()
        thirdVC.modalPresentationStyle = .fullScreen
        
        if let answer = emailTextField.text{
            thirdVC.dataBind(answer: answer)
        }
    
        self.present(thirdVC, animated: true)
    }
    
    private func pushToSecondVC(){
        let secondVC = SecondVC()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

extension FirstVC {
    
    private func setAddTarget() {
        signupButton.addTarget(self, action: #selector(touchuploginButton), for: .touchUpInside)
    }
    
    private func setBackgroundColor() {
        view.backgroundColor = .white
    }
    
    private func setLayout() {
        let components: [Any] = [bigLabel, smallLabel, emailUnderLine, passwordUnderLine, emailTextField, passwordTextField, loginButton, signupButton, findLabel]
        components.forEach{
            view.addSubview($0 as! UIView)
        }
        
        bigLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(40)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(89)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).offset(-89)
            make.height.equalTo(22)
        }
        
        smallLabel.snp.makeConstraints { make in
            make.top.equalTo(self.bigLabel.snp.bottom).offset(20)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(67)
            make.height.equalTo(40)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(self.smallLabel.snp.bottom).offset(60)
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
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(self.passwordUnderLine.snp.bottom).offset(35)
            make.leading.trailing.equalTo(self.emailTextField)
            make.height.equalTo(44)
        }
        
        signupButton.snp.makeConstraints { make in
            make.top.equalTo(self.loginButton.snp.bottom).offset(10)
            make.leading.trailing.equalTo(self.emailTextField)
            make.height.equalTo(44)
        }
        
        findLabel.snp.makeConstraints { make in
            make.top.equalTo(self.signupButton.snp.bottom).offset(19)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(112)
        }
    }
}


