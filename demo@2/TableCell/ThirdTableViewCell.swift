//
//  ThirdTableViewCell.swift
//  demo@2
//
//  Created by abhishek bhatt on 03/01/18.
//  Copyright © 2018 abhishek bhatt. All rights reserved.
//

import UIKit

class ThirdTableViewCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
  
    

    @IBOutlet weak var cell3View: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        let nib = UINib(nibName: "ThirdCollectionViewCell", bundle: nil)
        cell3View.register(nib, forCellWithReuseIdentifier: "ThirdCollectionViewCell")
        
        cell3View.delegate = self
        cell3View.dataSource = self
        
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionView3 = collectionView.dequeueReusableCell(withReuseIdentifier: "ThirdCollectionViewCell", for: indexPath) as! ThirdCollectionViewCell
        return collectionView3
    }
    
}
