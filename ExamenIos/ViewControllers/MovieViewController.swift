//
//  ViewController.swift
//  ExamenIos
//
//  Created by Mañanas on 7/5/24.
//

import UIKit

class MovieViewController: UIViewController, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource {

    var movieList: [Movie] = []
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        searchBar.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 130
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        MovieProvider.searchByName(query: searchText) { fetchedMovies in
            self.movieList = fetchedMovies
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = movieList[indexPath.row]
        let cell: MovieTableCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableCell

        cell.render(movie: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "detail", sender: nil)
    }
    
    // Go to individual details
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow else {
            print("No movie selected")
            return
        }
        
        let movie = movieList[indexPath.row]
        
        let viewController: DetailViewController = segue.destination as! DetailViewController
        
        viewController.movie? = movie
    }
}

