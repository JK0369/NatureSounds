//
//  SoundVC.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

final class SoundVC: BaseViewController, ViewControllerInit {
    
    var viewModel: SoundVM!
    var router: SoundRouter!
    
    private lazy var collectionViewFlowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 10
        let elementWidth = view.bounds.width / 3 - layout.minimumInteritemSpacing * 3 - 8
        layout.itemSize = CGSize(width: elementWidth, height: 90)
        return layout
    }()
    
    private lazy var collectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout)
        view.dataSource = self
        view.delegate = self
        view.register(SoundCollectionViewCell.self, forCellWithReuseIdentifier: SoundCollectionViewCell.className)
        view.backgroundColor = .clear
        return view
    }()
    
    override func configure() {
        super.configure()
        router = SoundRouter(viewController: self)
    }
    
    func setupViews() {
        title = "sound"
        tabBarItem.image = UIImage(systemName: "music.note.list")
    }
    
    func addSubviews() {
        view.addSubview(collectionView)
    }
    
    func makeConstraints() {
        collectionView.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview().inset(8)
        }
    }
    
    func bindInputs() {
        
    }
    
    func bindOutputs() {
        
    }
}

extension SoundVC: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfSounds
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SoundCollectionViewCell.className, for: indexPath) as! SoundCollectionViewCell
        cell.model = viewModel.sounds[indexPath.item]
        return cell
    }
}
