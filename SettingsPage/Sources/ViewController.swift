//
//  ViewController.swift
//  SettingsPage
//
//  Created by Admin on 27.06.23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var settingsName = ["Авиарежим", "Wi-Fi", "Bluetooth", "Сотовая связь", "Режим модема", "VPN", "Уведомления", "Звуки, тактильные сигналы", "Не беспокоить", "Экранное время", "Основные", "Пункт управления", "Экран и яркость", "Экран «Домой»"]
    
    // MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView.init(frame: .zero, style: UITableView.Style.grouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        return tableView
    }()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationController?.title = "Настройки"
        self.navigationController?.navigationBar.prefersLargeTitles = true
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

    
    // MARK: - Actions




}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settingsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = settingsName[indexPath.row]
        return cell
    }
}
