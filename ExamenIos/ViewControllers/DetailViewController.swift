//
//  DetailViewController.swift
//  ExamenIos
//
//  Created by Mañanas on 8/5/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var lenghtLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var generoLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var sinopsisLabel: UILabel!
    
    var movie: Movie? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //titleLabel.text = movie?.title
        /* yearLabel.text = movie!.year
        posterImageView.image = UIImage(named: "image-placeholder")*/
        //posterImageView.loadFrom(url: movie.image)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
