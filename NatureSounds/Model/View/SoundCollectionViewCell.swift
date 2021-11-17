//
//  SoundCollectionViewCell.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit
import SnapKit

class SoundCollectionViewCell: UICollectionViewCell {
    
    var model: Sounds? {
        didSet {
            bind()
        }
    }
    
    private lazy var soundImageView: UIImageView = {
        let view = UIImageView()
        view.tintColor = .shallowWhite
        return view
    }()
    
    private lazy var soundLabel: UILabel = {
        let label = UILabel()
        label.textColor = .shallowWhite
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        addSubviews()
        makeConstraints()
    }
    
    private func setupViews() {
        layer.cornerRadius = 12
        layer.masksToBounds = true
        
        backgroundColor = .transparentWhite
    }
    
    private func addSubviews() {
        contentView.addSubview(soundImageView)
        contentView.addSubview(soundLabel)
    }
    
    private func makeConstraints() {
        soundImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(24)
            make.centerX.equalToSuperview()
        }
        
        soundLabel.snp.makeConstraints { make in
            make.top.equalTo(soundImageView.snp.bottom).offset(6)
            make.centerX.equalTo(soundImageView)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func bind() {
        soundImageView.image = model?.image
        soundLabel.text = model?.name
    }
}
