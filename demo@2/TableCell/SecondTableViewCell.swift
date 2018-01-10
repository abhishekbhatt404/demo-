//
//  SecondTableViewCell.swift
//  demo@2
//
//  Created by abhishek bhatt on 03/01/18.
//  Copyright © 2018 abhishek bhatt. All rights reserved.


import UIKit

class SecondTableViewCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
  

   
    @IBOutlet weak var cell2View: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let nib = UINib(nibName: "SecondCollectionViewCell", bundle: nil)
        cell2View.register(nib, forCellWithReuseIdentifier: "SecondCollectionViewCell")
        
        cell2View.delegate = self
        cell2View.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionView2 = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollectionViewCell", for: indexPath) as! SecondCollectionViewCell
        collectionView2.image2Collection.image = UIImage(named: "abhishek.jpg")
        return collectionView2
        
    }
    
    
}
