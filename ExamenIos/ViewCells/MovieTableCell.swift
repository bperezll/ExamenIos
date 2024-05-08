//
//  TableCell.swift
//  ExamenIos
//
//  Created by Mañanas on 7/5/24.
//

import UIKit

class MovieTableCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    func render(movie: Movie) {
        titleLabel.text = movie.title
        yearLabel.text = movie.year
        posterImageView.image = UIImage(named: "image-placeholder")
        posterImageView.loadFrom(url: movie.image)
    }

}
