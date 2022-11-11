//
//  FriendListVC.swift
//  Week1_Assignment
//
//  Created by JH on 2022/10/15.
//

import UIKit
import SnapKit

class FriendListVC: UIViewController {
    
    private let friendLabel: UILabel = {
        let label = UILabel()
        label.text = "친구"
        label.textColor = .black
        label.font = .systemFont(ofSize: 22)
        return label
    }()
    
    private lazy var settingButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .clear
        return button
    }()
    
    private lazy var profileButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
        return button
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(friendLabel)
        view.addSubview(settingButton)
        view.addSubview(profileButton)
        
        setBackgroundColor()
        setLayout()
        configButton()
        setProfileButton()
    }
    
    
    
}

extension FriendListVC {
    
    private func setBackgroundColor() {
        view.backgroundColor = .white
    }
    
    private func setLayout() {
        friendLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(12)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(14)
        }
        
        settingButton.snp.makeConstraints { make in
            make.centerY.equalTo(friendLabel)
            make.leading.equalTo(self.friendLabel.snp.trailing).offset(4)
            make.height.width.equalTo(21)
        }
        
        profileButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(64)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(14)
            make.height.equalTo(58)
            make.width.equalTo(59)
        }
    }
    
    private func configButton() {
        settingButton.setBackgroundImage(UIImage(named: "settingIc"), for: .normal)
    }
    
    private func setProfileButton() {
        profileButton.setBackgroundImage(UIImage(named: "profileImg"), for: .normal)
    }
    
    private func presentToMyProfileVC() {
        let myprofileVC = MyProfileVC()
        myprofileVC.modalPresentationStyle = .fullScreen
        self.present(myprofileVC, animated: true, completion: nil)
    }
    
    @objc
    private func touchButton(){
        presentToMyProfileVC()
    }

}
