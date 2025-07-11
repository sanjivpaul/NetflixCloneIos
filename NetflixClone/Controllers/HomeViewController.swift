//
//  HomeViewController.swift
//  NetflixClone
//
//  Created by V1 Macbook Air on 07/07/2025.
//

import UIKit

class HomeViewController: UIViewController {
    
    let sectionTitle:[String] = ["Trending Movies","Popular", "Trending Tv", "Upcoming Movies", "Top Rated"]
    
//    creating a home feed table
    private let homeFeedTable : UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable)
        
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        
//        design navbar
        configureNavbar()
        
//        hero image of home screen
//        homeFeedTable.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
        
        let headerView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
        homeFeedTable.tableHeaderView = headerView
        homeFeedTable.showsVerticalScrollIndicator = false
        
        getTrendingMovies()
        
        
    }
    
    private func configureNavbar(){
        var image = UIImage(named: "netflixLogo")
        image = image?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName: "play.rectangle"), style: .done, target: self, action: nil),
        ]
        
        navigationController?.navigationBar.tintColor = .white
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
    
    private func getTrendingMovies(){
        APICaller.shared.getTrendingMoview{_ in
            
            
        }
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
//    its create total sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
//    its creating 20 cells
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // return 20 rows in each section
    }
    
//    its for dequeue each row ==> set hello world in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = "Hello world"
//        cell.backgroundColor = .systemPink
//        return cell
        
//        useing my custom collection view table
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
//    height of my cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
//    section height
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
//    style header section title
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        guard let header = view as? UITableViewHeaderFooterView else {return}
        header.textLabel?.font = .systemFont(ofSize: 18, weight: UIFont.Weight.semibold)
        header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y:header.bounds.origin.y, width:100, height:header.bounds.height)
        header.textLabel?.textColor = .white
    }
    
    
//    set title for section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    
//    this will create a effect when scroll up then navigationBar will go up and on scroll down it stick to navigationBar
    func scrollViewDidScroll(_ scrollView:UIScrollView){
        let defaultOffset = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultOffset
        
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))
    }
    
    
    
}
