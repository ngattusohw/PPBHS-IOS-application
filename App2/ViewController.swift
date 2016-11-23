//
//  ViewController.swift
//  App2
//
//  Created by 206STUDENT on 2/26/16.
//  Copyright © 2016 206STUDENT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func ioshome(_ sender: AnyObject) {
        print("I am here");
        JLToast.makeText("Welcome, Version 1.01 \n Processing... Please Wait...", duration: 3).show()
        
        let u = "http://www.pointborohs.org/app/ioshome.htm"
        
        //        let requestURL = NSURL(string:url)
        //        let request = NSURLRequest(URL: requestURL!)
        let url =  URL(string:u);
        let request = URLRequest(url: url!);
        webView.loadRequest(request);
        webView.scalesPageToFit = false
        
    }
    
    
    //    @IBAction func ioshome(_ sender: UIButton) {
    //
    ////        ioshome.target = self.revealViewController()
    ////        ioshome.action = Selector("revealToggle:")
    //        print("I am here");
    //        JLToast.makeText("Welcome, Version 1.01 \n Processing... Please Wait...", duration: 3).show()
    //
    //        let u = "http://www.pointborohs.org/app/ioshome.htm"
    //
    ////        let requestURL = NSURL(string:url)
    ////        let request = NSURLRequest(URL: requestURL!)
    //        let url =  URL(string:u);
    //        let request = URLRequest(url: url!);
    //        webView.loadRequest(request);
    //        webView.scalesPageToFit = false
    //
    //
    //    }
    
    @IBOutlet weak var webView: UIWebView!
    
    
    
    var varView = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        
        self.view.backgroundColor = UIColor.black
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.navigationController?.isNavigationBarHidden = true
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        if (varView == 0){
            JLToast.makeText("Welcome, Version 2.0G \n Processing... Please Wait...", duration: 3).show()
            
            let url = "http://www.pointborohs.org/app/ioshome.htm"
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.loadRequest(request)
            //webView.scalesPageToFit = true
            
        }
            
        else if (varView == 1){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            let url = "http://www.pointborohs.org/app/ma.php"
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.loadRequest(request)
            webView.scalesPageToFit = true
            
            
        }
            
        else if (varView == 2){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            
            let url = "http://www.pointborohs.org/app/ppcal.htm"
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.loadRequest(request)
        }
        
        else if (varView == 3){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            
            let url = "http://www.pointborohs.org/app/ppcalfull.htm"
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.loadRequest(request)
            webView.scalesPageToFit = true
        }

        else if (varView == 4){
            JLToast.makeText("BITS, Version 1.01 \n Processing... Please Wait...", delay: JLToastDelay.ShortDelay, duration: 3).show()
            //JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMMyy"
            
            let convertedDate = dateFormatter.string(from: currentDate).uppercased()
            
            
            let fi = ("_HS.pdf");
            
            print(convertedDate)
            
            let url = "https://docs.google.com/gview?embedded=true&url=" + "http://www.pointpleasant.k12.nj.us/Menus/" + convertedDate + fi
            print(url)
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.loadRequest(request)
            webView.scalesPageToFit = true
        }
            
        else if (varView == 5){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            
            let url = "http://www.pointborohs.org/app/TownFood.html"
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.loadRequest(request)
        }
            
        else if (varView == 6){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            
            let url = "https://parents.pointpleasant.k12.nj.us/genesis/parents?tab1=studentdata&tab2=gradebook&tab3=weeklysummary&action=form&studentid=16055102"
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.loadRequest(request)
        }
            
        else if (varView == 7){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            
            let url = "https://connection.naviance.com/family-connection/auth/login/?hsid=pointphs"
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.loadRequest(request)
            webView.scalesPageToFit = true
        }
        
        else if (varView == 8){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            
            let base = "http://www.pointborohs.org/app/sch.pdf"
            let url = "https://docs.google.com/gview?embedded=true&url=" + base
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.scalesPageToFit = true
            
            webView.loadRequest(request)
            
            
        }

        else if (varView == 9){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            
            let url = "http://www.pointborohs.org/app/ioslinks.htm"
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.scalesPageToFit = true
            
            webView.loadRequest(request)
            
            
        }

            
        else if (varView == 10){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            
            let url = "http://www.pointborohs.org/app/iosabout.htm"
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.scalesPageToFit = true
            
            webView.loadRequest(request)
        }
        
        else if (varView == 11){
            
            JLToast.makeText("Processing... Please Wait...", duration: 3).show()
            let url = "http://www.pointborohs.org/app/status.htm"
            
            let requestURL = URL(string:url)
            let request = URLRequest(url: requestURL!)
            webView.scalesPageToFit = true
            
            webView.loadRequest(request)
        }
            
            
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

