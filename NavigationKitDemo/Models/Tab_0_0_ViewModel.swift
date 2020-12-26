//
//  Tab_0_0_ViewModel.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI

class Tab_0_0_ViewModel: ObservableObject {
    
    @Published var text = ""
    
    func fetchData(completion: @escaping (Result<Bool, Error>) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            completion(.success(true))
        }
    }
}
