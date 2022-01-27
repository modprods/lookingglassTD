# Looking Glass Plugin for [TouchDesigner 099](https://www.derivative.ca/)

![](images/header.png)

## What is this?
This is a plugin that will display content authored in TouchDesigner on the Looking Glass 3D Holographic Display. It is native to Touch and requires minimal setup

## Requirements
* Ability to display a 2560 x 1600 or 2048 x 1536 window in TouchDesigner 099.
* A Looking Glass 3D Holographic Display. Currently only the Standard and Portrait Mode Looking Glass Displays are supported
* Web Drivers for Looking Glass from the Holoplay.js download (more info below)
* A GPU that supports multi camera rendering. see [this article](https://docs.derivative.ca/Multi-Camera_Rendering) on the wiki for specific compatability
* Currently, this has only been tested with TouchDesigner 099(2021.15240) running on Windows 10 64-bit but it likely works with many other combinations of OS versions and TD builds



## Installation. 
* Follow the setup guide located [here](https://docs.lookingglassfactory.com/).

* We found it helpful to install [the library](https://docs.lookingglassfactory.com/Gettingstarted/library/) and run some example programs to make sure the display is working properly.

* Once you've seen a couple holograms download the driver to load the calbiration from the display. Follow [this link](https://lookingglassfactory.com/software#holoplay-service) to get the service.

* Once you've got the driver and the display connected clone or download this repo

* Select which version of the component to use. Portrait users should use `lkg_portrait_cam` while landscape users should use `lkg_v2_2`

* Import and have fun!





## Using The Component

* The component is designed to function approximately like a normal TD camera. Place the camera component within the same scene as Geo comps and lights and the component will render these approriately. Simple camera operations(Translate, Rotate, Scale) are supported. Other camera operations are not(Look At, Path, e.t.c) and will produce unexpected results.
* you can render to the Looking Glass one of two ways. 
    1. The Tox exposes a TOP out that you can use in your own windowing setup


    ![](images/info.png)


    2. Alternatively you can pulse the Show custom parameter. The plugin will attempt to identify which connected monitor is the LookingGlass and publish content directly to that monitor.

        ![](images/show_btn.png)


## Help I'm stuck!

* Every Touch Setup is different but open an issue on this repo and I'll try and help the best I can. Please describe your current hardware setup and other salient information. Alternatively find me(@picturesbyrobots) on the TD Discord!


## Contributors
* @ruigato portrait mode testing and implementation!! 🙌 🙌 🙌
* @matthewhaber
* @picturesbyrobots
