//
//  HeaderView.swift
//  StretchyHeader
//
//  Created by Ata Etgi on 24.04.2021.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "karsten-wurth"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemRed
        
        addSubview(imageView)
        imageView.fillSuperview()

        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
}
