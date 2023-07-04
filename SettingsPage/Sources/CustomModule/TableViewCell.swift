//
//  TableViewCell.swift
//  SettingsPage
//
//  Created by Admin on 28.06.23.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    
    var settings: Settings? {
        didSet {
            iconImage.image = settings?.iconImage
            name.text = settings?.name.rawValue
            text.text = settings?.text
//            switchButton = settings?.switchButton ?? UISwitch()
        }
    }

    // MARK: - Outlets

    private let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        return imageView
    }()

    private let name: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let text: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textAlignment = .right
        label.textColor = .systemGray
        return label
    }()
    
//    private var switchButton: UISwitch = {
//        let switchButton = UISwitch()
//        switchButton.addTarget(TableViewCell.self, action: #selector(switchChange(_:)), for: .valueChanged)
//        return switchButton
//    }()
    
    private let imageContainer: UIView = {
        let container = UIView()
        return container
    }()
    
    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.spacing = 1
        return stack
    }()
    
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
//        imageContainer.addSubview(iconImage)
//        stack.addArrangedSubview(name)
//        stack.addArrangedSubview(text)
//        stack.addArrangedSubview(switchButton)
//        addSubview(imageContainer)
//        addSubview(stack)
        contentView.addSubview(iconImage)
        contentView.addSubview(name)
        contentView.addSubview(text)
//        contentView.addSubview(switchButton)
    }
    
    private func setupLayout() {
        
//        iconImage.snp.makeConstraints { make in
//            make.top.right.bottom.left.equalTo(imageContainer)
//            make.center.equalTo(imageContainer)
//        }
//
//        text.snp.makeConstraints { make in
//            make.top.bottom.equalTo(stack)
//            make.right.equalTo(stack).offset(10)
//        }
//
//        imageContainer.snp.makeConstraints { make in
//            make.top.left.bottom.equalTo(contentView).offset(5)
//            make.centerY.equalTo(contentView)
//            make.width.height.equalTo(30)
//        }
//
//        stack.snp.makeConstraints { make in
//            make.centerY.equalTo(imageContainer)
//            make.left.equalTo(imageContainer.snp.right).offset(20)
//        }
        
        iconImage.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(6)
            make.bottom.equalTo(contentView).offset(-5)
            make.left.equalTo(contentView).offset(15)
            make.width.height.equalTo(30)
        }
        
        name.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(6)
            make.bottom.equalTo(contentView).offset(-5)
            make.left.equalTo(iconImage).offset(40)
        }
        
        text.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(6)
            make.bottom.equalTo(contentView).offset(-5)
            make.right.equalTo(contentView).offset(-10)
        }
        
//        switchButton.snp.makeConstraints { make in
//            make.top.equalTo(contentView).offset(5)
//            make.bottom.equalTo(contentView).offset(-5)
//            make.right.equalTo(contentView).offset(-10)
//        }

    }
    
    // MARK: - Reuse

    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
    }
    
    // MARK: - Action

    @objc func switchChange(_ sender: UISwitch!) {
        
        print("table row switch Changed \(sender.tag)")
        print("The switch is \(sender.isOn ? "On" : "Off")")
//        if target.isOn {
//            print("switchButton is On")
//        } else {
//            print("switchButton is Off")
//        }
    }
    
}
