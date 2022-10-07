//
//  ThirdVC.swift
//  Week1_Assignment
//
//  Created by JH on 2022/10/07.
//

import UIKit

class ThirdVC: UIViewController {
    
    
    private let welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 50, y: 180, width: 300, height: 300))
        label.numberOfLines = 2
        label.text = "OOO님 \n 환영합니다"
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    private let okButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 30, y: 510, width: 320, height: 40))
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
