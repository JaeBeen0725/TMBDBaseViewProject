//
//  TableViewCell.swift
//  TMBDBaseViewProject
//
//  Created by Jae Oh on 2023/08/28.
//

import UIKit

class TableViewCell: BaseTableViewCell {
    
    
    let movieDateLabel = {
        
        let view = UILabel()
        view.textColor = .black
        
        return view
    }()
    
    let movieGenreLable = {
        let view = UILabel()
        view.textColor = .black
        return view
    }()
    
    let moviethumbnailImageView = UIImageView()
    
    let movieTitleLabel = {
        
        let view = UILabel()
        view.textColor = .black
        
        return view
    }()
    
    
    override func configureView() {
        contentView.addSubview(movieDateLabel)
        contentView.addSubview(movieGenreLable)
        contentView.addSubview(moviethumbnailImageView)
        contentView.addSubview(movieTitleLabel)
    }
    
    override func setConstraints() {
        
        movieDateLabel.snp.makeConstraints { make in
            make.topMargin.leadingMargin.trailingMargin.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(30)
        }
        
        movieGenreLable.snp.makeConstraints { make in
            make.topMargin.equalTo(movieDateLabel.snp.bottom).offset(16)
            make.leadingMargin.trailingMargin.equalTo(self.safeAreaLayoutGuide)
        }
        
        moviethumbnailImageView.snp.makeConstraints { make in
            make.topMargin.equalTo(movieGenreLable.snp.bottom).offset(16)
            make.leadingMargin.trailingMargin.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(200)
        }
        
        movieTitleLabel.snp.makeConstraints { make in
            make.topMargin.equalTo(moviethumbnailImageView.snp.bottom).offset(16)
            make.leadingMargin.trailingMargin.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(30)
        }
        
    }
    
    
    
}
