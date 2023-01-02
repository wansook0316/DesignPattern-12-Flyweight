//
//  File.swift
//  Flyweight
//
//  Created by Choiwansik on 2023/01/02.
//

import Foundation

internal enum NumberType: Int {
    case zero = 0
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

extension NumberType {

    internal var rawData: String {
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
            return """
             ###
            #   #
             ###
                #
                #
            """
        }
    }
}
