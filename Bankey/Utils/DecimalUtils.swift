//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Viviane Heldt Weber on 13/05/24.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
