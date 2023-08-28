//
//  TableView.swift
//  TMBDBaseViewProject
//
//  Created by Jae Oh on 2023/08/28.
//

import UIKit

class TableView: BaseTableView {
    
    let tableView = {
        
        let view = UITableView()
        view.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        view.rowHeight = 300
        
        return view
    }()
    
    
    override func configureView() {
        addSubview(tableView)
       
    }
    
    override func setConstraints() {
        
        tableView.snp.makeConstraints { make in
            make.size.equalToSuperview()
          
        }
        
    }
    
}
