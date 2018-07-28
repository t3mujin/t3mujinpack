# t3mujinpack

##			Film emulation pack for Darktable		
[![Latest release](https://img.shields.io/github/release/t3mujin/t3mujinpack.svg?style=flat-square)](https://github.com/t3mujin/t3mujinpack/releases)
[![t3mujinpack tag on Flickr](https://img.shields.io/badge/t3mujinpack-flickr-ff69b4.svg?style=flat-square)](https://www.flickr.com/photos/tags/t3mujinpack)
[![#t3mujin hashtag on Instagram](https://img.shields.io/badge/%23t3mujinpack-instagram-ff69b4.svg?style=flat-square)](https://www.instagram.com/explore/tags/t3mujinpack/)
[![Donate on Paypal](https://img.shields.io/badge/donate-paypal-yellow.svg?style=flat-square)](https://paypal.me/t3mujin)
[![Register Newsletter](https://img.shields.io/badge/register-newsletter-lightgrey.svg?style=flat-square)](http://eepurl.com/cdvLev)
[![Visit main site](https://img.shields.io/badge/visit-main%20site-lightgrey.svg?style=flat-square)](http://t3mujinpack.joaoalmeidaphotography.com/)



t3mujinpack is a set of presets designed to emulate some of the most used photo films of all time, build specifically for open-source RAW developer software [Darktable](http://www.darktable.org/). It includes some of the most popular film emulations, like the vivid colors of Fuji Velvia, the muted tones of Kodachrome or the classic Ilford b&w films.

This pack started by [João Almeida](http://www.joaoalmeidaphotography.com) with the motivation of filling the lack of film simulation options, both in quantity and quality, for Darktable. It was motivated by the many options available for the most popular RAW development softwares, but mostly by [G'MIC film emulation](http://gmic.eu/film_emulation/), which has been one of the main references in the devevelpment of these styles. The goal of these is to be as simple as possible by using few Darktable modules, it works solely by manipulating Lab Tone Curves for color manipulation, black & white films rely heavily on Channel Mixer.



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

These presets aren't camera optimized, they rely on having the cameras's basecurve already applied (by default it is). But the current version presets have been tested with the following cameras:
* Fuji X-T2
* Fuji X-E2
* Fuji X-E3
* Fuji X-T10
* Nikon D300s
* Nikon D7100
* Nikon D800
* Sony RX100 I



## Install
1. Go to Styles box in Lighttable mode.
2. Click Import and select all or only the ones you want to install.

## Uninstall
1. Close Darktable.
2. Open a Terminal window.
3. Go to the folder where the styles were extracted.
4. Run remove_t3mujinpack.sh.
  1. This script will try to locate the Darktable database files at its default location. If, for some reason, those are at a different location you can pass that as a script parameter: remove_t3mujinpack.sh /some/folder/data.db
  2. A list of installed styles will be shown before deletion.

Styles can also be deleted from Darktable's Styles box in Lighttable mode.

## Upgrade
Sadly there is no direct way to upgrade the styles in Darktable, the only option is to remove all and install the updated styles.

1. Run the Uninstall steps above, it won't remove the edited images or even delete the keywords associated with the tags.
2. Install the styles following the steps from above.



## Usage
Just apply the selected preset, and you're ready to go.

These presets where designed to be used with Darktable's [base curve](https://www.darktable.org/usermanual/en/modules.html) enabled, this is to try to have a consistent output with different cameras. You can use default base curve for your camera, that come enabled by default, or you can even fine tune it to have a bit more or less contrast. If you use a custom base curve that's radically different from the default or have other modules in the pipeline adding contrast, then unexpected results could happen. It's highly recommended also to have the White Balance set to a neutral temperature before applying it, and the same goes exposure adjustments, so that the base image is relatively plain and clean.



## Changelog

#### 0.4.0
* Updated all Fuji Pro and Astia 100F films.
* Updated all Kodak Porta films.
* Updated all Ektachrome and Ektachrome.
* Smaller tweaks on Kodak Kodakchrome films.

#### 0.3.0
* Updated Fuji Pro 400H and 800Z.
* Updated Fuji Provia 100F.
* Updated Kodak Kodachrome 64 and Kodak Kodachrome 200.
* Updated Kodak Ektar 100.
* Fixes in uninstall script: fixed typos and colors, script now more resilient (thanks Marek for the changes).

#### 0.2.0
* Updated Kodak Portra styles (mostly the new ones, the non UC/VC/UC presets).
* Updated Fuji Pro styles (160Z, 400H, 800H).
* Updated Fuji Provia styles.
* Updated Kodak Kodachrome styles.
* Support for Darktable 2.2.
* New style removal script, both for uninstall and upgrade.
* Fix: Velvia 50 wasn’t enabling the module

#### 0.1.1
* Initial release




## Future releases roadmap

* Improving the current films
* Add variatons in some films with more intense or subtle emulation, Portra films are the most like candidate to start on this
* Add new films, don't have a candidates for now but feel free to add your suggestions  
