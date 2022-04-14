//
//  BookmarkCollectionViewCell.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/15.
//

import SnapKit
import UIKit

final class BookmarkCollectionViewCell: UICollectionViewCell {
    static let identifier = "BookmarkCollectionViewCell"
    
    private var sourceBookmarkTextStackView: BookmarkTextStackView!
    private var targetBookmarkTextStackView: BookmarkTextStackView!
    
    private lazy var stackView: UIStackView = {
        let inset: CGFloat = 16.0
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 16.0
        
        stackView.layoutMargins = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        stackView.isLayoutMarginsRelativeArrangement = true
        
        [sourceBookmarkTextStackView, targetBookmarkTextStackView]
            .forEach { stackView.addArrangedSubview($0) }
        
        return stackView
    }()
    
    func setUp(from bookmark: Bookmark) {
        backgroundColor = .systemBackground
        layer.cornerRadius = 12.0
        
        sourceBookmarkTextStackView = BookmarkTextStackView(
            language: bookmark.sourceLanguage,
            text: bookmark.sourceText,
            type: .source
        )
        
        targetBookmarkTextStackView = BookmarkTextStackView(
            language: bookmark.translatedLanguage,
            text: bookmark.traslatedText,
            type: .target
        )
        
        addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalTo(UIScreen.main.bounds.size.width - 32.0)
        }
        
        layoutIfNeeded()
    }
}
