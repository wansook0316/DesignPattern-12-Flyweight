//
//  DigitFactory.swift
//  Flyweight
//
//  Created by Choiwansik on 2023/01/02.
//

import Foundation

internal class DigitFactory {

    internal func digit(of integer: Int) -> Digit {
        // 0-9 이외의 값이 들어오는 경우는 시간상 제외함

        if let digit = self.pool[integer],
           digit != nil {
            return digit!
        } else {
            let digit = Digit(filename: "\(integer).txt")
            self.pool[integer] = digit
            return digit
        }
    }

    private var pool = Dictionary(uniqueKeysWithValues: zip(0...9, [Digit?].init(repeating: nil, count: 10)))
}
