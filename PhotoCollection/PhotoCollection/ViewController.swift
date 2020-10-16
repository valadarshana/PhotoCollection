//
//  ViewController.swift
//  PhotoCollection
//
//  Created by Vijay Parmar on 16/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colBabyImages: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        colBabyImages.delegate = self
        colBabyImages.dataSource = self
        
        colBabyImages.isPagingEnabled = true
    }

    
}


extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath)as! ImageCollectionViewCell
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = CGSize(width: self.view.frame.width, height: self.view.frame.height)
        
        return size
    }
    
    
}







