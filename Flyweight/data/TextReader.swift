//
//  text.swift
//  Flyweight
//
//  Created by Choiwansik on 2023/01/02.
//

import Foundation

// 편의를 위해 number type을 넘기면 text 데이터를 읽어와 리턴한다고 생각하자.

internal class TextReader {

    static func read(filename: String) -> String {
        guard let numberString = filename.split(separator: ".").first,
              let integer = Int(numberString),
              let numberType = NumberType(rawValue: integer) else {
            return ""
        }

        return numberType.rawData
    }

}
