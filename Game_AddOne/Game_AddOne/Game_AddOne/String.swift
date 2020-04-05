//
//  String.swift
//  Game_AddOne
//
//  Created by Xcode User on 2019-12-15.
//  Copyright © 2019 TonTonKatsu. All rights reserved.
//

import Foundation

extension String
{
    static func randomNum(length: Int) -> String
    {
        var result = ""
        
        for _ in 0..<length {
            let digit = Int.random(in: 0...9)
            result += "\(digit)"
        }
        return result
    }
    
    func integer(at n: Int) -> Int {
        let index = self.index(self.startIndex, offsetBy: n)
        
        return self[index].wholeNumberValue ?? 0
    }
    
}
