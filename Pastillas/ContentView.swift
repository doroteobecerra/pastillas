//
//  ContentView.swift
//  Pastillas
//
//  Created by Alejandro Doroteo on 04/02/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresented: Bool = false
    
    //Formulario
    @State var nombre: String = ""
    var body: some View {
        NavigationView{
            List{
                NavigationLink("Medicamento 1", destination: Text("Medicamento 1"))
                Text("Medicamento 1")
                Text("Medicamento 2")
                Text("Medicamento 3")
                Text("Medicamento 4")
            }
            .navigationTitle("Madicamentos")
            .navigationBarItems(trailing: Button("Agregar", action: {
                isPresented = true
            }))
        }
        
        
        /*
        VStack{
            
            Button("Agregar"){
                isPresented = true
            }
            .position(x: 320, y: 620)
        }
         */
        .sheet(isPresented: $isPresented,
               onDismiss: {isPresented = false},
               content: {
            VStack{
                HStack{
                    Button("Cancelar"){
                        isPresented = false
                    }
                    Button("Guardar"){
                        
                    }
                }
                Form{
                    TextField("Nombre", text: $nombre)
                }
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
