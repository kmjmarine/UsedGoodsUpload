//
//  DetailWriteFormCell.swift
//  UsedGoodsUpload
//
//  Created by kmjmarine on 2022/03/26.
//

import UIKit
import RxSwift
import RxCocoa

final class DetailWriteFormCell: UITableViewCell {
    let disposeBag = DisposeBag()
    let contentInputView = UITextView() //Multi line
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        atribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(_ viewModel: DetailWriteFormCellViewModel) {
        contentInputView.rx.text
            .bind(to: viewModel.contentValue)
            .disposed(by: disposeBag)
    }
    
    private func atribute() {
        contentInputView.font = .systemFont(ofSize: 17)
    }
    
    private func layout() {
        contentView.addSubview(contentInputView)
        
        contentInputView.snp.makeConstraints {
            $0.top.bottom.equalToSuperview().inset(15)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(300)
        }
    }
}
