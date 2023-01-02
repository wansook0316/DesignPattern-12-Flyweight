//
//  Number.swift
//  Flyweight
//
//  Created by Choiwansik on 2023/01/02.
//

import Foundation

internal class Number {

    internal init(integer: Int) {
        let string = String(integer)

        let factory = DigitFactory()

        (0..<string.count)
            .map { (offset: Int) -> String in
                let index = string.index(string.startIndex, offsetBy: offset)
                return String(string[index])
            }
            .compactMap { Int($0) }
            .forEach {
                self.digitList.append(factory.digit(of: $0))
            }
    }

    internal func print() {
        self.digitList.forEach {
            $0.print()
        }
    }

    private var digitList = [Digit]()
}
