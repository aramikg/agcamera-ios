//
//  ViewController.swift
//  ExampleApplication
//
//  Created by Aramik on 5/12/17.
//  Copyright © 2017 aramikg. All rights reserved.
//

import UIKit
import AVFoundation
import AGCamera

class ViewController: UIViewController, AGCamera {


    weak var delegate: AGCameraDelegate?

    var captureVideoDataOutput: AVCaptureVideoDataOutput!
    var captureDeviceInput: AVCaptureDeviceInput!
    var captureDevice: AVCaptureDevice!
    var captureSession: AVCaptureSession!
    var cameraDirection: AGCameraDirection!
    var previewView: UIView!
    var previewLayer: AVCaptureVideoPreviewLayer!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.delegate = self
        let cameraSettings = AGCameraSettings.init(quality: AVCaptureSessionPresetHigh, type: AGCameraCaptureType.video, direction: AGCameraDirection.rear)
        try? start(cameraUsing: cameraSettings)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: AGCameraDelegate {
    func agCameraDidFinishInitializing() {
        
        previewLayer.frame = self.view.frame
        self.view.addSubview(previewView)
    }
}

