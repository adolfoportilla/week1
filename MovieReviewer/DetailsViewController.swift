//
//  DetailsViewController.swift
//  MovieReviewer
//
//  Created by adolfo portilla on 1/31/16.
//  Copyright © 2016 Adolfo Portilla. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    
    @IBOutlet weak var posterimageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        
        let title = movie["title"] as?  String
        titleLabel.text = title
        
        let overview = movie["overview"]
        overviewLabel.text = overview as? String
        
        overviewLabel.sizeToFit()
        
        if let posterPath = movie["poster_path"] as? String {
            let posterBaseUrl = "http://image.tmdb.org/t/p/w500"
            let imageUrl = NSURL(string: posterBaseUrl + posterPath)
            posterimageView.setImageWithURL(imageUrl!)
        }
        else {
            // No poster image. Can either set to nil (no image) or a default movie poster image
            // that you include as an asset
            let noimageBaseUrl = "http://www.aadprt.org/application/files/8514/4044/9309/"
            let noimageUrl = NSURL(string: noimageBaseUrl + "no_image_available.gif")
            posterimageView.setImageWithURL(noimageUrl!)
        }
        
        print(movie)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
