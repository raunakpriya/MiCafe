//
//  CafeTableViewCell.swift
//  MyCafe
//

import UIKit

class SightTableViewCell: UITableViewCell {

    var sightImageView = UIImageView()
    var sightTitleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(sightImageView)
        addSubview(sightTitleLabel)
        
        configureImageView()
        configureImageTitle()
        
        setImageConstraints()
        setLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Not implemented!")
    }

    func set(sight: Sight) {
        sightImageView.image = sight.image
        sightTitleLabel.text = sight.label
    }
    
    func configureImageView() {
        sightImageView.layer.cornerRadius = 10
        sightTitleLabel.clipsToBounds = true
    }
    
    func configureImageTitle() {
        sightTitleLabel.numberOfLines = 0
        sightTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        sightImageView.translatesAutoresizingMaskIntoConstraints = false
        sightImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        sightImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        sightImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        sightImageView.widthAnchor.constraint(equalTo: sightImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setLabelConstraints() {
        sightTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        sightTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        sightTitleLabel.leadingAnchor.constraint(equalTo: sightImageView.trailingAnchor, constant: 20).isActive = true
        sightTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        sightTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
}
