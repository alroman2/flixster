//
//  MovieDetailsViewController.swift
//  iflix
//
//  Created by Alexander Roman Montiel on 10/29/20.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        titleLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let poserPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseURL+poserPath)!
        
        posterImageView.af.setImage(withURL: posterUrl)
        
        let backDropPath = movie["backdrop_path"] as! String
        let backDropUrl = URL(string: "https://image.tmdb.org/t/p/w780"+backDropPath)!
        
        backDropImageView.af.setImage(withURL: backDropUrl)
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
