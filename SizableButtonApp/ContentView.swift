//
//  ContentView.swift
//  SizableButtonApp
//
//  Created by Nikolay Pochekuev on 17.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isPressed: Bool = false
    var body: some View {
        if !isPressed {
            Spacer()
        }
        HStack {
            if !isPressed {
                Spacer()
            }
            Button {
                if !isPressed {
                    isPressed.toggle()
                }
            } label: {
                VStack {
                    HStack {
                        HStack {
                            if isPressed {
                                Image(systemName: "arrowshape.backward.fill")
                                    .foregroundStyle(.white)
                            }
                            Text(isPressed ? "Back" : "Open")
                                .foregroundStyle(.white)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            isPressed.toggle()
                        }
                        if isPressed {
                            Spacer()
                        }
                    }
                    .padding()
                    if isPressed {
                        Spacer()
                    }
                    
                }
            }
            .frame(width: isPressed ? 200 : nil, height: isPressed ? 300 : nil)
            .background(Color(.blue))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .animation(.easeInOut, value: isPressed)
        }
        .padding()
    }

}

#Preview {
    ContentView()
}
