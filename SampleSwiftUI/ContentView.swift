//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by Bala KS on 15/10/19.
//  Copyright © 2019 Bala KS. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = "Tim"
    @State var pwd: String = "good"
    
    var body: some View {
        Color.white
            .edgesIgnoringSafeArea(.vertical) // Ignore just for the color
            .overlay(
                LoginView(username: name, password: pwd).cornerRadius(15).shadow(radius: 15)
                
        )
    }
}

struct TopView: View {
    var body: some View {
        Color.pink
            .edgesIgnoringSafeArea(.vertical) // Ignore just for the color
            .overlay(
                VStack {
                    Text("Sign In")
                        .bold()
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }
        )
    }
}

struct LoginView: View {
    
    @State var username: String
    @State var password: String
    
    var body: some View {
        VStack(spacing: 30) {
            // top view
            TopView().background(Color.green)
            
            // middle stack
            VStack(alignment: .center, spacing: 20) {
                VStack(spacing: 15) {
                    TextField("Enter username", text: $username)
                        .padding(20)
                        .frame(width: 310,height:50)
                        .background(Color.init(red: 211/255, green: 211/255, blue: 211/255))
                        .cornerRadius(20)
                    
                    TextField("Enter password", text: $password)
                        .padding(20)
                        .frame(width: 310,height:50)
                        .background(Color.init(red: 211/255, green: 211/255, blue: 211/255))
                        .cornerRadius(20)
                }
                
                Button("SIGN IN",action: {
                    print("login success")
                }).frame(width: 310, height: 50)
                    .background(Color.pink)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                
                Button(action: {
                    print("login success")
                }) {
                    Text("Forgot Username / Password?")
                        .foregroundColor(.pink)
                        .frame(height: 30)
                }
            }
            
            // bottom stack
            VStack {
                Text("Don't you have account?").foregroundColor(.gray).font(.system(size: 14))
                
                Button("SIGN UP NOW",action: {
                    print("login success")
                }).frame(width: 200, height: 50, alignment: .center)
                    .foregroundColor(.pink)
                    .font(.system(size: 15))
            }
        }.frame(width: 340, height: 500, alignment: .center)
            .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
