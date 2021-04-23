//
//  StretchyHeaderLayout.swift
//  StretchyHeader
//
//  Created by Ata Etgi on 24.04.2021.
//

import UIKit

class StretchyHeaderLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
        layoutAttributes?.forEach({ (attributes) in
            if attributes.representedElementKind == UICollectionView.elementKindSectionHeader && attributes.indexPath.section == 0 {
                
                guard let collectionView = collectionView else { return }
                
                let contentOffsetY = collectionView.contentOffset.y
                print(contentOffsetY)
                
                guard contentOffsetY < 0 else { return }
                
                let width = collectionView.frame.width
                
                let height = attributes.frame.height - contentOffsetY
                
                
                // header
                attributes.frame = .init(x: 0, y: contentOffsetY, width: width, height: height)
                
            }
        })
        return layoutAttributes
        
    }
    
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        // lets you recalculate everything
        // Defination: Asks the layout object if the new bounds require a layout update.
        return true
    }
    
}
