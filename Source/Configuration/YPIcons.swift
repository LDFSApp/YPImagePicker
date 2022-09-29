//
//  YPIcons.swift
//  YPImagePicker
//
//  Created by Nik Kov on 13.04.2018.
//  Copyright © 2018 Yummypets. All rights reserved.
//

import UIKit

public struct YPIcons {

    public var shouldChangeDefaultBackButtonIcon = false
    public var hideBackButtonTitle = true
    
    public var backButtonIcon: UIImage = imageFromBundle("yp_arrow_left")
    public var arrowDownIcon: UIImage = imageFromBundle("yp_arrow_down")
    public var cropIcon: UIImage = imageFromBundle("yp_iconCrop")
    public var flashOnIcon: UIImage = imageFromBundle("yp_iconFlash_on")
    public var flashOffIcon: UIImage = imageFromBundle("yp_iconFlash_off")
    public var flashAutoIcon: UIImage = imageFromBundle("yp_iconFlash_auto")
    public var loopIcon: UIImage = imageFromBundle("yp_iconLoop")
    public var multipleSelectionOffIcon: UIImage = imageFromBundle("yp_multiple")
    public var multipleSelectionOnIcon: UIImage = imageFromBundle("yp_multiple_colored")
    public var capturePhotoImage: UIImage = imageFromBundle("yp_iconCapture")
    public var captureVideoImage: UIImage = imageFromBundle("yp_iconVideoCapture")
    public var captureVideoOnImage: UIImage = imageFromBundle("yp_iconVideoCaptureRecording")
    public var playImage: UIImage = imageFromBundle("yp_play")
    public var removeImage: UIImage = imageFromBundle("yp_remove")
    public var libraryOnImage: UIImage = imageFromBundle("book-pile")
    public var libraryOffImage: UIImage = imageFromBundle("book-pileOff")
    public var cameraOnImage: UIImage = imageFromBundle("photo-camera")
    public var cameraOffImage: UIImage = imageFromBundle("photo-cameraOff")
    public var videoOnImage: UIImage = imageFromBundle("video-camera")
    public var videoOffImage: UIImage = imageFromBundle("video-cameraOff")
}
