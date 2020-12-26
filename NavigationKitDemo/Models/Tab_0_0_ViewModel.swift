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
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 4) {
            DispatchQueue.main.async {
                completion(.success(true))
            }
        }
    }
}
