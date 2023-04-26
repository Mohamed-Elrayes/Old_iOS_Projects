//
//  TodoApp.swift
//  Todo
//
//  Created by Mohamed Salah on 24/04/2023.
//

import SwiftUI
/*
 MVVM Architecture

 Model - data point
 View - UI
 ViewModel - manages Models for view

 */

@main
struct TodoApp: App {
    @StateObject var listViewModel: ListViewModel = .init()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
