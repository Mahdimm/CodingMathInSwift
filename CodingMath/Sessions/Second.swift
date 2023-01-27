//
//  Second.swift
//  CodingMath
//
//  Created by Mahdi Mahjoobi on 1/26/23.
//

import SwiftUI

struct Second: View {
    
    private let angles = calculatePI()
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                ForEach(0..<angles.count, id: \.self) { index in
                    Path { path in
                        let x = angles[index] * 100
                        let y = sin(angles[index]) * 100
                        path.addRect(CGRect(x: x, y: y, width: 10, height: 10))
                    }
                }
            }
            .offset(CGSize(width: geometry.size.width * 0.2, height: geometry.size.height / 2))
        }
    }
    
    private static func calculatePI() -> [Double] {
        let angles = stride(from: 0.0, to: Double.pi * 2, by: 0.01)
        return Array(angles)
    }
}
