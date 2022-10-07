//
//  ViewController.swift
//  Week1_Assignment
//
//  Created by JH on 2022/10/07.
//

import UIKit

class FirstVC: UIViewController {

    private let bigLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 90, y: 120, width: 250, height: 30))
        label.text = "카카오톡을 시작합니다"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 24)
        return label
    }()

    
    private let smallLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 50, y: 160, width: 300, height: 60))
        label.numberOfLines = 2
        label.text = "사용하던 카카오계정이 있다면 \n 이메일 또는 전화번호로 로그인해 주세요."
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 16)
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
    
    
    private let loginButton: UIButton = {
       let button = UIButton(frame: CGRect(x: 30, y: 460, width: 320, height: 40))
        button.setTitle("카카오계정 로그인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(touchuploginButton), for: .touchUpInside)
        return button
    }()
    
    
    private let signupButton: UIButton = {
       let button = UIButton(frame: CGRect(x: 30, y: 510, width: 320, height: 40))
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(touchupSinginButton), for: .touchUpInside)
        return button
    }()
    
    private let findLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 90, y: 560, width: 200, height: 30))
        label.text = "카카오계정 또는 비밀번호 찾기"
        label.textColor = .systemGray
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        return label
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //view.addSubview(bigLabel)
        //view.addSubview(smallLabel)
        //view.addSubview(emailTextField)
        //view.addSubview(passwordTextField)
        //view.addSubview(emailUnderLine)
        //view.addSubview(passwordUnderLine)
        //view.addSubview(loginButton)
        //view.addSubview(signupButton)
        //view.addSubview(findLabel)
        
       let components: [Any] = [bigLabel, smallLabel, emailUnderLine, passwordUnderLine, emailTextField, passwordTextField, loginButton, signupButton, findLabel]
        components.forEach{
            view.addSubview($0 as! UIView)
        }
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
    
    
    @objc
    private func touchuploginButton(){
        presentToThirdVC()
    }
    
    @objc
    private func touchupSinginButton(){
        pushToSecondVC()
    }
    
    
}

