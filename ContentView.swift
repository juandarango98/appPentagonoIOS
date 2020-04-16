//
//  ContentView.swift
//  Pentagono CoreData
//
//  Created by Juan Arengo on 4/04/20.
//  Copyright © 2020 Juan Arango. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
       VStack{
            if self.selection == 0{
                CollectionView()
            }
            else  if self.selection == 1{
                Guardar()
            }
           
         Spacer()
        Picker (selection: self.$selection, label: Text("")){
            Image(systemName: "folder.fill").tag(0)
            Image(systemName: "arrow.up.doc").tag(1)
         //   Image(systemName: "pencil").tag(2)
            
        }.pickerStyle(SegmentedPickerStyle())
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
