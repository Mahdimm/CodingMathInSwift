//
//  First.swift
//  CodingMath
//
//  Created by Mahdi Mahjoobi on 1/22/23.
//

import SwiftUI

struct First: View {
        
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                ZStack {
                    let width = geometry.size.width
                    let height = geometry.size.height
                    
                    ForEach(Array(0...100), id: \.self) { _ in
                        Path { path in
                            let randWidth = Int.random(in: 1...Int(width))
                            let randHeight = Int.random(in: 1...Int(height))
                                                        
                            path.move(to: CGPoint(x: randWidth, y: randHeight))
                            path.addLine(to: CGPoint(x: Double(randWidth) * 0.5, y: Double(randHeight) * 0.5))
                            path.closeSubpath()
                        }
                        .stroke(.blue, lineWidth: 5)
                    }
                }
            }
        }
    }
}
