//
//  TableCell.swift
//  ExamenIos
//
//  Created by Mañanas on 7/5/24.
//

import UIKit

class MovieTableCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    func render(movie: Movie) {
        titleLabel.text = movie.title
        //imageView.image = UIImage(named: "image-placeholder")
        //imageView.loadFrom(url: superhero.image.url)
    }

}
