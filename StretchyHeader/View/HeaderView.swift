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
        
        //blur
        setupVisualEffectBlur()
    }
    
    var animator: UIViewPropertyAnimator!

    let visualEffectView = UIVisualEffectView(effect: nil)
    
    fileprivate func setupVisualEffectBlur() {
        
        self.addSubview(visualEffectView)
        visualEffectView.fillSuperview()
        
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: { [weak self] in
            
            guard let self = self else { return }
            // treat this are as the end state of your animation
            self.visualEffectView.effect = UIBlurEffect(style: .regular)
            
        })
        
//        animator.startAnimation()

        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
}
