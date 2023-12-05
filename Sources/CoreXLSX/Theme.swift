//
//  File.swift
//
//
//  Created by JH on 2023/12/5.
//

import Foundation

// 主题结构体，映射 theme 元素
public struct Theme: Codable {
    public let themeElements: ThemeElements

    enum CodingKeys: String, CodingKey {
        case themeElements
    }
}

// 主题元素结构体，映射 themeElements 元素
public struct ThemeElements: Codable {
    public let clrScheme: ClrScheme

    enum CodingKeys: String, CodingKey {
        case clrScheme
    }
}

// 颜色方案结构体，映射 clrScheme 元素
public struct ClrScheme: Codable {
    public let name: String
    public let dk1: ClrSchemeElement?
    public let lt1: ClrSchemeElement?
    public let dk2: ClrSchemeElement?
    public let lt2: ClrSchemeElement?
    public let accent1: ClrSchemeElement?
    public let accent2: ClrSchemeElement?
    public let accent3: ClrSchemeElement?
    public let accent4: ClrSchemeElement?
    public let accent5: ClrSchemeElement?
    public let accent6: ClrSchemeElement?
    public let hlink: ClrSchemeElement?
    public let folHlink: ClrSchemeElement?

    enum CodingKeys: String, CodingKey {
        case name
        case dk1
        case lt1
        case dk2
        case lt2
        case accent1
        case accent2
        case accent3
        case accent4
        case accent5
        case accent6
        case hlink
        case folHlink
    }
}

// 颜色方案元素结构体，映射 clrScheme 的子元素
public struct ClrSchemeElement: Codable {
    public let sysClr: SysClr?
    public let srgbClr: SrgbClr?

    enum CodingKeys: String, CodingKey {
        case sysClr
        case srgbClr
    }

    public var rgbColor: String? {
        sysClr?.lastClr ?? srgbClr?.val
    }
}

// 系统颜色结构体，映射 sysClr 元素
public struct SysClr: Codable {
    public let val: String
    public let lastClr: String

    enum CodingKeys: String, CodingKey {
        case val
        case lastClr
    }
}

// 标准 RGB 颜色结构体，映射 srgbClr 元素
public struct SrgbClr: Codable {
    public let val: String

    enum CodingKeys: String, CodingKey {
        case val
    }
}
