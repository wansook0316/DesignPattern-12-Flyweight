//
//  text.swift
//  Flyweight
//
//  Created by Choiwansik on 2023/01/02.
//

import Foundation

// 편의를 위해 number type을 넘기면 text 데이터를 읽어와 리턴한다고 생각하자.

internal class TextReader {

    static func read(numberType: NumberType) -> String {
        numberType.rawData
    }

}

extension TextReader {

    internal enum NumberType {
        case zero
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
    }

}

extension TextReader.NumberType {

    var rawData: String {
        switch self {
        case .zero:
            return """
             ###
            #   #
            #   #
            #   #
             ###
            """
        case .one:
            return """
              #
              #
              #
              #
              #
            """
        case .two:
            return """
             ###
                #
             ###
            #
             ###
            """
        case .three:
            return """
             ###
                #
             ###
                #
             ###
            """
        case .four:
            return """
               #
              ##
             # #
            #####
               #
            """
        case .five:
            return """
             ###
            #
             ###
                #
             ###
            """
        case .six:
            return """
            #
            #
             ###
            #   #
             ###
            """
        case .seven:
            return """
            #####
                #
                #
                #
                #
            """
        case .eight:
            return """
             ###
            #   #
             ###
            #   #
             ###
            """
        case .nine:
            """
             ###
            #   #
             ###
                #
                #
            """
        }
    }
}
