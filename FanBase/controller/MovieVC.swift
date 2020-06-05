//
//  ViewController.swift
//  FanBase
//
//  Created by Prabhat  on 04/06/20.
//  Copyright © 2020 Defenders. All rights reserved.
//

import UIKit

class MovieVC: UIViewController , UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var Movies: UITableView!
    
    private(set) public var actors = [Actor]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Movies.dataSource = self
        Movies.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getMovies().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as? MovieCell
        {
           let movie = DataService.instance.getMovies()[indexPath.row]
            cell.initActors(movie: movie)
            cell.Actors.reloadData()
            cell.updateViews(movie: movie)
            print ([indexPath.row], "index movie")
            return cell
        } else {
            return MovieCell()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               if let bioVC = segue.destination as? BiographyVC {
                   let barBtn = UIBarButtonItem()
                   barBtn.title = ""
                   navigationItem.backBarButtonItem = barBtn
                   assert(sender as? Actor != nil)
                   print(sender as! Actor)
                   bioVC.initBio(actor: sender as! Actor)
               }
           }
    
    
    


}

