//
//  SimpleCalcMVP.swift
//  SimpleCalculator
//
//  Created by Anton Smirnov on 07.06.2021.
//

import Foundation

protocol SimpleCalcView: class { 
    func showResult(result:String)
    func clearScreen()
    func appendString(value: String)
    func removeLastChar()
    func showWarning()
}

protocol SimpleCalcPresenter{
    func numberDidTap(tag:Int, currentText: String?)
    func actionDidTap(tag:Int, currentText: String?)
}
