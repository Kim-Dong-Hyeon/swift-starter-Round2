//
//  main.swift
//  step3
//
//  Created by 이진 on 2023/03/13.
//

import Foundation

func convertToString(from lottoNumbers: Array<Int>) -> String {

    return lottoNumbers.map {String($0)}.joined(separator: ", ")
}

func makeRandomLottoNumbers() -> Array<Int> {
    var randomLottoNumbers = Set<Int>()
    
    while randomLottoNumbers.count < 6 {
        randomLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return Array(randomLottoNumbers)
}

func checkLottoNumber(round: Int) {
    var lottoNumbersRecord = Dictionary<String, Array<Int>>()
    
    for round in 1...5 {
        lottoNumbersRecord["\(round)회차"] = makeRandomLottoNumbers()
    }
    
    let selectedRoundLottoNumbers = lottoNumbersRecord["\(round)회차"]
    
    if let optionalBindingSelectedRoundLottoNumbers = selectedRoundLottoNumbers {
        let convertedOptionalBindingSelectedRoundLottoNumbers = convertToString(from: optionalBindingSelectedRoundLottoNumbers)
        print("\(round)회차의 로또 당첨 번호는 \(convertedOptionalBindingSelectedRoundLottoNumbers) 입니다.")
    }
}

checkLottoNumber(round: 4)


