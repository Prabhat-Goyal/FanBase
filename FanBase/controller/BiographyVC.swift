//
//  BiographyVC.swift
//  FanBase
//
//  Created by Prabhat  on 05/06/20.
//  Copyright © 2020 Defenders. All rights reserved.
//

import UIKit

class BiographyVC: UIViewController {

    @IBOutlet weak var imageActorBio: UIImageView!
    
    @IBOutlet weak var nameActorBio: UILabel!
    
    @IBOutlet weak var detailsActorBio: UILabel!
    
    private var actorBio: Actor!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detailsActorBio.text = self.actorBio.bio
        self.nameActorBio.text = self.actorBio.name
        self.imageActorBio.image = UIImage(named: self.actorBio.picture)
    }
    
    func initBio(actor: Actor) {
        actorBio = Actor(name: actor.name, picture: actor.picture, bio: actor.bio)
    }
    

}
