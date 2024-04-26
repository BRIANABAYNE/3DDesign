//
//  ContentView.swift
//  3DDesign
//
//  Created by Briana Bayne on 4/25/24.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
    var body: some View {
        VStack {
            Onboard3DView()
                .frame(height: 500)
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                Text("Build your Brand")
                    .font(.title.bold())
                
                Text("Stay up to date with all your")
                    .foregroundStyle(.secondary)
                
            }
            
            .padding(.horizontal)
            Spacer()
            Button("Get Started") {
                // action code goes here
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
        }
    }
    
}
#Preview {
    ContentView()
}


struct Onboard3DView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/5GTFZ23LNA9rvm5Bomug/scene.splineswift")!
    
        try? SplineView(sceneFileURL: url)
    }
}
