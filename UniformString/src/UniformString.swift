//
//  UniformString.swift
//  UniformString
//
//  Created by Henry Tseng on 2015/2/12.
//  Copyright (c) 2015年 Cloudbay. All rights reserved.
//

import Foundation

extension String {
    
    public func length() -> Int! {
        return count(self)
    }
    
    public func match(str : String) -> Range<String.Index>? {
        return self.rangeOfString(str)
    }
    
    public func splitBy(character : Character) -> [String]? {
        return split(self, {$0==character}, maxSplit: Int.max, allowEmptySlices: false)
    }
    
    public func sub(string : String, _ withString : String) -> String {
        return self.stringByReplacingOccurrencesOfString(string, withString: withString, options: .LiteralSearch, range: nil)
    }
    
    public func trim() -> String {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
    
    public func escape() -> String? {
        return self.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
    }
    
    public func unescape() -> String? {
        return self.stringByReplacingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
    }
    
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = advance(self.startIndex, r.startIndex)
            let endIndex = advance(startIndex, r.endIndex - r.startIndex)
            
            return self[Range(start: startIndex, end: endIndex)]
        }
    }
}