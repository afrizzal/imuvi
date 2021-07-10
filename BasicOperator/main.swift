//
//  main.swift
//  BasicOperator
//
//  Created by Afrizzal on 06/07/21.
//


import Foundation

print("Learn basic operator in swift")
print("Let's try!")

// Input form
print("Block width:"); let widthInput = readLine()
print("Block Height::"); let heightInput = readLine()
print("Block Length:"); let lengthInput = readLine()

// Change string to double
if let length = Double(lengthInput ?? "0"), let height = Double(heightInput ?? "0"), let width = Double(widthInput ?? "0") {
    // Math func
    let volume = length * height * width
    let surfaceArea = 2 * ((width * length) + (width * height) + (height * length))
    let circumference = 4 * (width + length + height)
    print("----------------------------------")
  
    // Output.
    print("Your block details:")
    print("1. Width = \(width) cm.")
    print("2. Height = \(height) cm.")
    print("3. Length = \(length) cm.")
    print("4. Voleme = \(volume) cm3.")
    print("5. SurfaceArea = \(surfaceArea) cm2.")
    print("6. Circumference = \(circumference) cm.")
    print("----------------------------------")
} else {
    //
    print("----------------------------------")
    print("Input not valid!")
    print("----------------------------------")
}
