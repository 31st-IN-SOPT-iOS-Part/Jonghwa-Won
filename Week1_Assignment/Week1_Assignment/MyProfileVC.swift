//
//  MyProfileVC.swift
//  Week1_Assignment
//
//  Created by JH on 2022/10/15.
//

import UIKit
import SnapKit
import SwiftyColor

class MyProfileVC: UIViewController {
    
    private lazy var profileImgButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private let profileNameLabel: UILabel = {
        let label = UILabel()
        label.text = "종화곤듀"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = 0x9FA7AD.color
        return view
    }()
    
    private let profileTalkImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "profileTalkImg")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let profileTalkLabel: UILabel = {
       let label = UILabel()
        label.text = "나와의 채팅"
        label.textColor = 0xECEDEE.color
        label.font = .systemFont(ofSize: 10)
        return label
    }()
    
    private let profileTalkButton: UIStackView = {
       let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 10
        return stack
    }()
    
    private let profileEditImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "profileEditImg")
        image.contentMode = .scaleAspectFit

        return image
    }()
    
    private let profileEditLabel: UILabel = {
       let label = UILabel()
        label.text = "프로필 편집"
        label.textColor = 0xECEDEE.color
        label.font = .systemFont(ofSize: 10)
        return label
    }()
    
    private let profileEditButton: UIStackView = {
       let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 10
        return stack
    }()
    
    private let profileStoryImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "profileStoryImg")
        image.contentMode = .scaleAspectFit

        return image
    }()
    
    private let profileStoryLabel: UILabel = {
       let label = UILabel()
        label.text = "카카오스토리"
        label.textColor = 0xECEDEE.color
        label.font = .systemFont(ofSize: 10)
        return label
    }()
    
    private let profileStoryButton: UIStackView = {
       let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 10
        return stack
    }()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(profileImgButton)
        view.addSubview(profileNameLabel)
        view.addSubview(lineView)
        view.addSubview(profileTalkButton)
        view.addSubview(profileEditButton)
        view.addSubview(profileStoryButton)


        [profileTalkImage, profileTalkLabel].map {
            self.profileTalkButton.addArrangedSubview($0)
        }
        [profileEditImage, profileEditLabel].map {
            self.profileEditButton.addArrangedSubview($0)
        }
        [profileStoryImage, profileStoryLabel].map {
            self.profileStoryButton.addArrangedSubview($0)
        }
        
        setLayout()
        setBackgroundColor()
        setProfileImg()
    }
    



}

extension MyProfileVC {
    
    private func setLayout() {
        profileImgButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(470)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
            make.height.equalTo(97)
            make.width.equalTo(96)
        }
        
        profileNameLabel.snp.makeConstraints { make in
            make.top.equalTo(self.profileImgButton.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        lineView.snp.makeConstraints { make in
            make.top.equalTo(self.profileImgButton.snp.bottom).offset(71)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
        
        profileTalkImage.snp.makeConstraints { make in
            make.top.equalTo(self.lineView.snp.bottom).offset(36)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(83)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        profileTalkLabel.snp.makeConstraints { make in
            make.height.equalTo(11)
        }
        profileTalkButton.snp.makeConstraints { make in
            make.top.equalTo(self.lineView.snp.bottom).offset(11)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(48)
            make.width.equalTo(92)
            make.height.equalTo(72)
        }
        
        profileEditImage.snp.makeConstraints { make in
            make.top.equalTo(self.lineView.snp.bottom).offset(36)
            make.centerX.equalToSuperview()
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        profileEditLabel.snp.makeConstraints { make in
            make.height.equalTo(11)
        }
        
        profileEditButton.snp.makeConstraints { make in
            make.top.equalTo(self.lineView.snp.bottom).offset(11)
            make.centerX.equalToSuperview()
            make.width.equalTo(92)
            make.height.equalTo(72)
        }

        profileStoryImage.snp.makeConstraints { make in
            make.top.equalTo(self.lineView.snp.bottom).offset(36)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        profileStoryLabel.snp.makeConstraints { make in
            make.height.equalTo(11)
        }
        
        profileStoryButton.snp.makeConstraints { make in
            make.top.equalTo(self.lineView.snp.bottom).offset(11)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(48)
            make.width.equalTo(92)
            make.height.equalTo(72)
        }
    }
    
    
    private func setBackgroundColor() {
        view.backgroundColor = 0x879198.color
    }
    
    private func setProfileImg() {
        profileImgButton.setBackgroundImage(UIImage(named: "profileImg"), for: .normal)
    }
}
