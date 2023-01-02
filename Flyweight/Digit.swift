//
//  Digit.swift
//  Flyweight
//
//  Created by Choiwansik on 2023/01/02.
//

import Foundation

internal class Digit {

    internal init(filename: String) {
        self.data = TextReader.read(filename: filename)
    }

    internal func print() {
        Swift.print(self.data)
    }

    private var data = ""

}
