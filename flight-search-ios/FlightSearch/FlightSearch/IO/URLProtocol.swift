//
//  URLProtocol.swift
//  FlightSearch
//
//  Copyright © 2019 American Airlines. All rights reserved.
//

import UIKit

struct URLProtocol {


    func makeGETRequest(urlString: String) throws  -> [Flight] {
        var flights: [Flight] = []
        guard let url = URL(string: urlString)
            else {
            return []
        }
        let session = URLSession.shared
        // semaphone
        let semaphone = DispatchSemaphore(value: 0)
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
                // response gives you access to status codes like 200
            }
            if let data = data {
                print(data)
                do {
                    let allFlights = try JSONDecoder().decode([Flight].self, from: data)
                    flights = allFlights
                } catch {
                    flights = []
                }
                semaphone.signal()
            }
        }.resume()
        _ = semaphone.wait(timeout: .distantFuture)
        return flights
    }


    // Example url: "https://jsonplaceholder.typicode.com/post"
    // Example params = ["username": "yoyo", "message": "helloWorld"]
    func makePOSTRequest(urlString: String, params: [String: String]) -> Any? {
        var jsonData: Any?
        guard
            let url = URL(string: urlString),
            let httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
            else {
                return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        // add header
        request.addValue("/application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = httpBody
        let session = URLSession.shared

        session.dataTask(with: request) { (data, response, error) in
            if let data = data {
                print(data)
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    jsonData = json
                    print(json)
                } catch {
                     jsonData = nil
                    print(error)
                }
            }
        }.resume()
        return jsonData
    }
}
