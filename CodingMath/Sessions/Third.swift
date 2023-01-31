//
//  Third.swift
//  CodingMath
//
//  Created by Mahdi Mahjoobi on 1/30/23.
//

import SwiftUI

struct Third: View {
    
    var body: some View {
        GeometryReader { geometry in
            let height = geometry.size.height
            let width = geometry.size.width
            
            let centerY = height * 0.5
            let centerX = width * 0.5
            let offset = height * 0.5
            let speed = calculateSpeed()
            var angle: CGFloat = 0
            let baseRadius: CGFloat = 100
            
            ZStack(alignment: .center) {
                ForEach(0..<speed.count, id: \.self) { index in
                    Path { path in
                        let radius = baseRadius + sin(angle) * offset
                                                
                        path.addArc(center: CGPoint(x: centerX, y: centerY), radius: radius, startAngle: Angle(radians: 0), endAngle: Angle(radians: Double.pi * 2), clockwise: false)
                        
                        angle = speed[index]
                    }
                    .stroke(.blue, lineWidth: 1)
                }
            }
        }
    }
    
    private func calculateSpeed() -> [Double] {
        let angles = stride(from: 0.0, to: Double.pi * 2, by: 0.01)
        return Array(angles)
    }
}

