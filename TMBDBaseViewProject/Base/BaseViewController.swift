//
//  BaseViewController.swift
//  TMBDBaseViewProject
//
//  Created by Jae Oh on 2023/08/28.
//

import UIKit

class BaseViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        setContraints()
    }
    
    func configureView() {
        
        view.backgroundColor = .gray
    }
    
    
    func setContraints() {
        
        
    }
    
}
