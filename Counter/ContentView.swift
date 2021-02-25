//
//  ContentView.swift
//  Counter
//
//  Created by KAWASHIMA Yoshiyuki on 2021/02/22.
//

import SwiftUI
import Neumorphic
import FirebaseFirestore

struct ContentView: View {
    @State var count: Int
    
    var body: some View {
        VStack {
            Text(String(count))
                .padding()
                .font(.headline)
                .foregroundColor(Color.Neumorphic.secondary)

            Button(action: { count += 1 }) {
                Text("+").fontWeight(.bold)
            }
            .softButtonStyle(Circle())
        }
        .onAppear {
            loadData()
        }
    }
    
    func loadData() {
        let db = Firestore.firestore()
        db.collection("counters").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                let document = querySnapshot!.documents.first
                let data = document?.data()
                count = data?["count"] as! Int
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(count: 0)
    }
}
