//
//  FirstTableViewCell.swift
//  demo@2
//
//  Created by abhishek bhatt on 03/01/18.
//  Copyright © 2018 abhishek bhatt. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
  
    
 
    @IBOutlet weak var cell1View: UICollectionView!
    
    override func awakeFromNib() {
      
        super.awakeFromNib()
        let nib = UINib(nibName: "FirstCollectionViewCell", bundle: nil)
        cell1View.register(nib, forCellWithReuseIdentifier: "FirstCollectionViewCell")
        
        cell1View.delegate = self
        cell1View.dataSource = self
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectionViewCell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollectionViewCell", for: indexPath) as! FirstCollectionViewCell
        return collectionViewCell1
    }
    

    
    
}
