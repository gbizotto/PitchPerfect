//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Gabriela S. Bizotto on 03/11/16.
//  Copyright © 2016 Gabriela S. Bizotto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopRecordingButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func recordAudio(sender: AnyObject) {
        print("Record button pressed")
        recordingLabel.text="Recording in progress"
        stopRecordingButton.enabled=true
        recordButton.enabled=false
    }
    

    @IBAction func stopRecording(sender: AnyObject) {
        print("Stop recording button pressed")
        stopRecordingButton.enabled=false
        recordButton.enabled=true
        recordingLabel.text="Tap to record"
    }
    
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear called")
        stopRecordingButton.enabled=false
    }
}

