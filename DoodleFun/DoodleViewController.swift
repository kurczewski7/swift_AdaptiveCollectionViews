//
//  DoodleViewController.swift
//  DoodleFun
//
//  Created by Simon Ng on 12/11/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class DoodleViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private	var	doodleImages	=
        ["DoodleIcons-1",	"DoodleIcons-2",	"DoodleIcons-3",	"DoodleIcons-4",	"DoodleIcons-5",	"DoodleIcons-6",	"DoodleIcons-7",
         "DoodleIcons-8",	"DoodleIcons-9",	"DoodleIcons-10",	"DoodleIcons-11",	"DoodleIcons-12",	"DoodleIcons-13",	"DoodleIcons-14",
         "DoodleIcons-15",	"DoodleIcons-16",	"DoodleIcons-17",	"DoodleIcons-18",	"DoodleIcons-19",	"DoodleIcons-20"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        
        
        return doodleImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DoodleCollectionViewCell
        cell.imageView.image = UIImage(named: doodleImages[indexPath.row])
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}





                 
