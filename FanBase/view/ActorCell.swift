//
//  ActorCell.swift
//  FanBase
//
//  Created by Prabhat  on 05/06/20.
//  Copyright © 2020 Defenders. All rights reserved.
//

import UIKit

class ActorCell: UICollectionViewCell {
    
    @IBOutlet weak var actorImage: UIImageView!
    @IBOutlet weak var actorName: UILabel!
    
    func updateViews(actor: Actor){
        actorImage.image = UIImage(named: actor.picture)
        actorName.text = actor.name
    }
    
}
