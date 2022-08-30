//
//  ContentView.swift
//  SmallApp
//
//  Created by Guillermo Ignacio Enriquez Gutierrez on 2022/08/30.
//

import SwiftUI

struct ContentView: View {

    @StateObject var model: Model

    var body: some View {
        Text("\(model.greetingText)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: Model())
    }
}
