//
//  BookmarkListViewController.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/15.
//

import SnapKit
import UIKit

final class BookmarkListViewController: UIViewController {
    private var bookmark: [Bookmark] = []
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        let inset: CGFloat = 16.0
        layout.scrollDirection = .vertical //기본값은 vertical
        layout.estimatedItemSize = CGSize(width: view.frame.width - (inset * 2), height: 100.0) //최소사이즈 설정
        layout.sectionInset = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        layout.minimumLineSpacing = inset
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .secondarySystemBackground
        collectionView.register(BookmarkCollectionViewCell.self, forCellWithReuseIdentifier: BookmarkCollectionViewCell.identifier)
        collectionView.dataSource = self
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        
        navigationItem.title = "즐겨찾기"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        bookmark = UserDefaults.standard.bookmarks
    }
}

extension BookmarkListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        bookmark.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BookmarkCollectionViewCell.identifier, for: indexPath) as? BookmarkCollectionViewCell
        
        let bookmark = bookmark[indexPath.item]
        cell?.setUp(from: bookmark)
        
        return cell ?? UICollectionViewCell()
    }
}

private extension BookmarkListViewController {
    func setupLayout() {
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
