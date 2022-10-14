//
//  ThirdVC.swift
//  Week1_Assignment
//
//  Created by JH on 2022/10/07.
//

import UIKit

class ThirdVC: UIViewController {
    
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "OOO님 \n 환영합니다"
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    private lazy var okButton: UIButton = {
        let button = UIButton()
        button.setTitle("확인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemYellow
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(touchupokButton), for: .touchUpInside)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(welcomeLabel)
        view.addSubview(okButton)
        
        setLayout()
    }
    
    func dataBind(answer: String){
        welcomeLabel.text = "\(answer)님 환영합니다"
        
    }
    
    @objc
    private func touchupokButton(){
        if self.navigationController == nil{
            self.dismiss(animated: true, completion: nil)
        }
        else{
            self.navigationController?.popViewController(animated: true)
        }
 
    }
}

extension ThirdVC {
    private func setLayout() {
      
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(197)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(144)
        }
        
        okButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(374)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            make.height.equalTo(44)
        }
    }
}
