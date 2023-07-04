//
//  CustomViewController.swift
//  SettingsPage
//
//  Created by Admin on 28.06.23.
//

import UIKit

class CustomViewController: UIViewController {
    
    private var settings: [[Settings]]?

    
    // MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
//        tableView.register(HeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.dataSource = self
//        tableView.delegate = self
        return tableView
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        settings = Settings.settings
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(view)
        }
    }
}

extension CustomViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = settings?[section]
        return section?.count ?? 0

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings?.count ?? 0

    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
//        let section = settings?[indexPath.section]
//        let setting = section?[indexPath.row]
        cell?.settings = settings?[indexPath.section][indexPath.row]
        if indexPath.section == 0 && indexPath.row == 0 {
            cell?.accessoryType = .none
        } else if indexPath.section == 0 && indexPath.row == 5 {
            cell?.accessoryType = .none
        } else {
            cell?.accessoryType = .disclosureIndicator
        }
        return cell ?? UITableViewCell()
    }
}
