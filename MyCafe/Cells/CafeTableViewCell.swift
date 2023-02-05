//
//  CafeTableViewCell.swift
//  MyCafe
//

import UIKit

class CafeTableViewCell: UITableViewCell {

    var cafeImageView = UIImageView()
    var cafeTitleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(cafeImageView)
        addSubview(cafeTitleLabel)
        
        configureImageView()
        configureImageTitle()
        
        setImageConstraints()
        setLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Not implemented!")
    }

    func set(cafe: Cafe) {
        cafeImageView.image = cafe.image
        cafeTitleLabel.text = cafe.label
    }
    
    func configureImageView() {
        cafeImageView.layer.cornerRadius = 10
        cafeImageView.clipsToBounds = true
    }
    
    func configureImageTitle() {
        cafeTitleLabel.numberOfLines = 0
        cafeTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        cafeImageView.translatesAutoresizingMaskIntoConstraints = false
        cafeImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        cafeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        cafeImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        cafeImageView.widthAnchor.constraint(equalTo: cafeImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setLabelConstraints() {
        cafeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        cafeTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        cafeTitleLabel.leadingAnchor.constraint(equalTo: cafeImageView.trailingAnchor, constant: 20).isActive = true
        cafeTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        cafeTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
}
