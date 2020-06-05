//
//  MovieCell.swift
//  FanBase
//
//  Created by Prabhat  on 05/06/20.
//  Copyright © 2020 Defenders. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var MovieName: UILabel!
    @IBOutlet weak var Actors: UICollectionView!
    
//    private(set) public var actors = [Actor]()
    private var actors: [Actor]!
    
    private var sender: UIViewController!

    func  updateViews(movie: Movie) {
    MovieName.text = movie.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Actors.dataSource = self
        Actors.delegate = self
        
    }
    
}
    
    
   extension MovieCell: UICollectionViewDelegate, UICollectionViewDataSource {
        
        func initActors(movie: Movie) {
            actors = DataService.instance.getActors(forFilmName: movie.name)
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         actors.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorCell {
             let actor = actors[indexPath.row]
             cell.updateViews(actor: actor)
             print ([indexPath.row], "actor index")
             return cell
         }
         return ActorCell()
        }
        
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            if let actor = actors?[indexPath.row] {
                sender.performSegue(withIdentifier: "bioSegue", sender: actor)
            }
            
        }
       
    
}
