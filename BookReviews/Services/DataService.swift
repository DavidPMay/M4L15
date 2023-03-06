//
//  DataService.swift
//  BookReviews
//
//  Created by David May on 2/28/23.
//

import Foundation



class DataService {
    
    static func getLocalData() -> [Book] {
        
        // Parse local json file
        
        // Get a url path to the json file
        
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        //check if pathName is not nil otherwise
        
        guard pathString != nil else {
            
            return [Book]()
        }
        
        
        // Create a URL object
        
        //let url = URL(fileURLWithPath: pathString!)
        let url = URL(filePath: pathString!)
        
        do {
            // Create a Data object
            
            let data = try Data(contentsOf: url)
            
            // Decode the object with a JSON decoder
            let decoder = JSONDecoder()
            
            
            do {
                
                let bookData = try decoder.decode([Book].self, from: data)
                
       //          Add the Unique IDs
                for b in bookData {
                    b.uid = UUID()
                }

//
//                    // Add unique ID to ingredients
//                    for i in r.ingredients {
//                        i.id = UUID()
//                    }
    //            }
                
                // Return the recipes
                return bookData
                
            }
            catch {
                
                // Error with parsing json
                print(error)
                
            }
           
            
            
            
        }
        catch {
            
            // Error with getting data
            print(error)
            
        }
        
        return [Book]()
    }
}
