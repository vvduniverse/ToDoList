//
//  AddView.swift
//  ToDoList
//
//  Created by Vahtee Boo on 06.02.2022.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type somethinbg here...", text: $textFieldText )
                    .padding()
                    .frame(height: 55)
                    .background(Color(white: 0.93))
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖋")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
