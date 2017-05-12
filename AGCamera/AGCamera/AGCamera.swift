//
//  AGCamera.swift
//  AGCamera
//
//  Created by Aramik on 5/12/17.
//  Copyright © 2017 aramikg. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import CoreImage

public protocol AGCamera: class {
    weak var delegate: AGCameraDelegate? { get set }
    
    var captureVideoDataOutput: AVCaptureVideoDataOutput! { get set }
    var captureDeviceInput: AVCaptureDeviceInput! { get set }
    var captureDevice: AVCaptureDevice! { get set }
    var captureSession: AVCaptureSession! { get set }
}
