//
//  TimeZone+Abbrevation.swift
//  TimeZones
//
//  Created by Tibor Bödecs on 2019. 02. 07..
//

import Foundation

public extension TimeZone {
    
    //created from: TimeZone.abbreviationDictionary.keys
    public enum Abbrevation: String {
        case adt
        case akdt
        case akst
        case art
        case ast
        case bdt
        case brst
        case brt
        case bst
        case cat
        case cdt
        case cest
        case cet
        case clst
        case clt
        case cot
        case cst
        case eat
        case edt
        case eest
        case eet
        case est
        case gmt
        case gst
        case hkt
        case hst
        case ict
        case irst
        case ist
        case jst
        case kst
        case mdt
        case msd
        case msk
        case mst
        case ndt
        case nst
        case nzdt
        case nzst
        case pdt
        case pet
        case pht
        case pkt
        case pst
        case sgt
        case trt
        case utc
        case wat
        case west
        case wet
        case wit
    }
    
    public init(abbrevation: TimeZone.Abbrevation) {
        self.init(abbreviation: abbrevation.rawValue.uppercased())!
    }
}
