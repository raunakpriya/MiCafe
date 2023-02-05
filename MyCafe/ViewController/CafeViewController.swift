//
//  CafeViewController.swift
//  MyCafe
//

import UIKit

class CafeViewController: UIViewController {
    
    var tableview = UITableView()
    var cafes: [Cafe] = []
    
    struct Cells {
        static let cafeCell = "CafeTableViewCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Sights"
        cafes = fetchData()
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableview)
        
        //set delegates
        setTableViewDelegates()
        
        //set row and height
        tableview.rowHeight = 100
        
        //register cells
        tableview.register(CafeTableViewCell.self, forCellReuseIdentifier: Cells.cafeCell)
        
        //set contraints
        tableview.pin(to: view)
        
    }
    
    func setTableViewDelegates() {
        tableview.delegate = self
        tableview.dataSource = self
        
    }
}

extension CafeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cafes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.cafeCell) as! CafeTableViewCell
        let cafe = cafes[indexPath.row]
        cell.set(cafe: cafe)
        
        return cell
    }
    
    
}

extension CafeViewController {
    func fetchData() -> [Cafe] {
        let cafe1 = Cafe(image: CafeImages.brava!, label: "Urban Brava")
        let cafe2 = Cafe(image: CafeImages.crepe!, label: "Crepe Cafe")
        let cafe3 = Cafe(image: CafeImages.dhunki!, label: "Dhunki")
        let cafe4 = Cafe(image: CafeImages.mocha!, label: "Mocha")
        let cafe5 = Cafe(image: CafeImages.olly!, label: "Cafe Olly")
        let cafe6 = Cafe(image: CafeImages.shuffle!, label: "Shuffle")
        let cafe7 = Cafe(image: CafeImages.uptown!, label: "Uptown Cafe")
        
        return [cafe1, cafe2, cafe3, cafe4, cafe5, cafe6, cafe7]
    }
}
