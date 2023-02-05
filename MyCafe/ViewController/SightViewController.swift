//
//  CafeViewController.swift
//  MyCafe
//

import UIKit

class SightViewController: UIViewController {
    
    var tableview = UITableView()
    var sights: [Sight] = []
    
    struct Cells {
        static let sight = "SightTableViewCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sights = fetchData()
        configureTableView()
    }
    
    func configureTableView() {
        
        view.addSubview(tableview)
        
        //set delegates
        setTableViewDelegates()
        
        //set row and height
        tableview.rowHeight = 100
        
        //register cells
        tableview.register(SightTableViewCell.self, forCellReuseIdentifier: Cells.sight)
        
        //set contraints
        tableview.pin(to: view)
        
    }
    
    func setTableViewDelegates() {
        tableview.delegate = self
        tableview.dataSource = self
        
    }
}

extension SightViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sights.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.sight) as! SightTableViewCell
        let sight = sights[indexPath.row]
        cell.set(sight: sight)
        
        return cell
    }
    
    
}

extension SightViewController {
    func fetchData() -> [Sight] {
        let sight1 = Sight(image: SightImages.tagore!, label: "Tagore Hill")
        let sight2 = Sight(image: SightImages.dassam!, label: "Dassam Fall")
        let sight3 = Sight(image: SightImages.dhurva!, label: "Dhurva Dam")
        let sight4 = Sight(image: SightImages.jagarnath!, label: "Jagarnath Temple")
        let sight5 = Sight(image: SightImages.kanke!, label: "Kanke Dam")
        let sight6 = Sight(image: SightImages.pahadi!, label: "Pahadi Mandir")
        let sight7 = Sight(image: SightImages.patratu!, label: "Patratu Valley")
        let sight8 = Sight(image: SightImages.rock!, label: "Rock Garden")
        let sight9 = Sight(image: SightImages.sun!, label: "Sun Temple")
        
        return [sight1, sight2, sight3, sight4, sight5, sight6, sight7, sight8, sight9]
    }
}
