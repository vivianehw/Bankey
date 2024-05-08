//
//  LocalState.swift
//  Bankey
//
//  Created by Viviane Heldt Weber on 08/05/24.
//

import Foundation

public class LocalState {
    
//    Declara um enum privado chamado Keys que armazena chaves para acessar dados no UserDefaults.
//    Neste caso, tem apenas um caso chamado hasOnboarded.
    private enum Keys: String {
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
    
}
