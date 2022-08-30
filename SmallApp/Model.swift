//
//  Model.swift
//  SmallApp
//
//  Created by Guillermo Ignacio Enriquez Gutierrez on 2022/08/30.
//

import Foundation
import Combine

class Model: ObservableObject {
    @Published var greetingText = "こんにちは"
}
