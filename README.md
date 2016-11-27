# t3mujinpack

##			Film emulation pack for Darktable		

t3mujinpack is a set of presets designed to emulate some of the most used photo films of all time, build specifically for open-source RAW developer software Darktable. It includes some of the most popular film emulations, like the vivid colors of Fuji Velvia, the muted tones of Kodachrome or the classic Ilford b&w films. 

This pack started with the motivation of filling the lack of film simulation options, both in quantity and quality, for Darktable. It was motivated by the many options available for the most popular RAW development softwares, but mostly by G'MIC film emulation (http://gmic.eu/film_emulation/), which has been one of the main references in the devevelpment of these styles. The goal of these is to be as simple as possible by using few Darktable modules, it works solely by manipulating Lab Tone Curves for color manipulation, black & white films rely heavily on Channel Mixer.



### Available film emulations 

#### Black and White films
* AGFA APX 100
* AGFA APX 25
* Fuji Neopan 1600
* Fuji Neopan Acros 100
* Ilford Delta 100
* Ilford Delta 3200
* Ilford Delta 400
* Ilford FP4 125
* Ilford HP5 Plus 400
* Ilford XP2
* Kodak T-Max 3200
* Kodak Tri-X 400

#### Color Negative films
* Fuji Pro 160C
* Fuji Pro 400H
* Fuji Pro 800Z
* Fuji Superia 100
* Fuji Superia 1600
* Fuji Superia 200
* Fuji Superia 400
* Fuji Superia 800
* Fuji Superia HG 1600
* Kodak Ektar 100
* Kodak Portra 160
* Kodak Portra 160 NC
* Kodak Portra 160 VC
* Kodak Portra 400
* Kodak Portra 400 NC
* Kodak Portra 400 UC
* Kodak Portra 400 VC
* Kodak Portra 800

#### Color Slide films
* Fuji Astia 100F
* Fuji Provia 100F
* Fuji Provia 400F
* Fuji Provia 400X
* Fuji Sensia 100
* Fuji Velvia 100
* Fuji Velvia 50
* Kodak Ektachrome 100 GX
* Kodak Ektachrome 100 VS
* Kodak Elite Chrome 400
* Kodak Kodakchrome 200
* Kodak Kodakchrome 25
* Kodak Kodakchrome 64

### Tested Cameras

The presets aren't meant to be optimized for specific cameras, but the these are the ones it has tested with:
* Fuji X-E2
* Fuji X-T10 
* Nikon D300s
* Nikon D7100
* Nikon D800
* Sony RX100 I



## Install
Go to Styles box in Lighttable mode, click Import and select all or only the ones you want to install. It should become available in the styles box or the styles quick access icon in Darkroom mode.

## Uninstall
Go to Styles box in Lighttable mode, select the style and click Delete. Must be done manually for all.

## Usage 
Just apply the selected preset, And you're ready to go. 
It's highly recommended to have the White Balance properly set before applying it. These presets where created using Darktable's default base curves for each camera model except for Fuji, where I use my a slightly smother basecurve (very slightly) as I feel the the default one has a bit too much contrast. If you use a custom basecurve to add more contrast or have other modules in the pipeline adding contrast, then expect strange results. 


## Changelog

#### 0.1.1	Initial release



## Future releases roadmap 

* Improving the current films
* Add variatons in some films with more intense or subtle emulation, Portra films are the most like candidate to start on this
* Add new films, don't have a candidates for now but feel free to add your suggestions  
* Better way to bulk update/uninstall styles, can be tedious to do one by one









