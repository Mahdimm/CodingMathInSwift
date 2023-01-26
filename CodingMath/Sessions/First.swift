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
                            
                            let moveCoordinate = generateRandomNumber(width: width, height: height)
                            path.move(to: CGPoint(x: moveCoordinate.x, y: moveCoordinate.y))
                            
                            let addLineCoordinate = generateRandomNumber(width: width, height: height)
                            path.addLine(to: CGPoint(x: addLineCoordinate.x, y: addLineCoordinate.y))
                            
                            path.closeSubpath()
                        }
                        .stroke(.blue, lineWidth: 8)
                    }
                }
            }
        }
    }
    
    private func generateRandomNumber(width: Double, height: Double) -> (x: Double, y: Double) {
        (x: Double.random(in: 1...width), y: Double.random(in: 1...height))
    }
}
