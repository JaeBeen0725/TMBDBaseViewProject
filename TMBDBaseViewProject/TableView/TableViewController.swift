//
//  TableViewController.swift
//  TMBDBaseViewProject
//
//  Created by Jae Oh on 2023/08/28.
//

import UIKit
import Kingfisher
import Alamofire
import SwiftyJSON
class TableViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate{
   
   
    let mainView = TableView()
    var movieList: TMDBData = TMDBData(page: 0, movies: [], totalPages: 0, totalResults: 0)
    
    let genreList : [Int : String] = [28:"Action", 12: "Adventure", 16: "Animation", 35: "Comedy", 80: "Crime", 99: "Documentary", 18: "Drama", 10751: "Family", 14: "Fantasy", 36: "History", 27: "Horror", 10402: "Music", 9648: "Mystery", 10749: "Romance", 878: "Science Fiction", 10770: "TV Movie", 53: "Thriller", 10752: "War", 37: "Western" ]
    
    override func loadView() {
        self.view = mainView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func configureView() {
        super.configureView()
        
        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self
        tmbdCompletionHandling()
    }
    
    func tmbdCompletionHandling() {
        print(#function)
        TMBDManager.shared.callRequestCodable { data in
            self.movieList = data
            print(data)
            self.mainView.tableView.reloadData()
        } failer: {
            print("에러임 얼럿 ㄱㄱ")
        }
        dump(movieList)
       print(movieList)
        print("---------------------------------------", movieList.movies)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else { print("fsdf"); return UITableViewCell() }
        
      
        let result = movieList.movies[indexPath.row]
        
        if let url = URL(string: "https://image.tmdb.org/t/p/w500/\(result.posterPath)") {
            cell.moviethumbnailImageView.kf.setImage(with: url)
        } else {
            print("이미지 없음 얼럿 ㄱㄱ")
        }
        
        cell.movieDateLabel.text = result.releaseDate
        cell.movieGenreLable.text = genreList[result.genreIDS[0]]
        cell.movieTitleLabel.text = result.title

    
        
        return cell
    }

}



