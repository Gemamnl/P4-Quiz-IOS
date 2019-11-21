//
//  imageStore.swift
//  P4 Quiz10
//
//  Created by g924 DIT UPM on 20/11/2019.
//  Copyright © 2019 g924 DIT UPM. All rights reserved.
//

import Foundation
import UIKit

var imageCache = [URL: UIImage]()

func image(url:URL)-> UIImage {
    
    if let img = imageCache[url]{
        
        return img
    }
    
    if let data = try? Data(contentsOf:url),
        
        let img=UIImage(data: data){
        imageCache[url]=img
        return img
    }
        
    
    
    
    return UIImage(named: "downloading")! //ponerfoto error
}
