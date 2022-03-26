//
//  DetailWriteFormCellViewModel.swift
//  UsedGoodsUpload
//
//  Created by kmjmarine on 2022/03/26.
//

import RxSwift
import RxCocoa

struct DetailWriteFormCellViewModel {
    //View -> ViewModel
    let contentValue = PublishRelay<String?>()
}
