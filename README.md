az-data-processing
==================

Convert world coordinates into pixel coordinates to locate asteroids.

##Contents

* **JSON Files** (e.g. 01_12DEC02_N04066_0001.json) corresponding to each original, large FITS image (actual image data not included) with original FITS header and a manifest of all component tiles (image paths, center RA/DEC values, and cropping coordinates relative to original image).
* ***faux_ephm.txt***, a list of known asteroids generated by the Minor Planet Center (MPC). Note: the format of this document may change in the future. Example of EPHM contents:

```
File_Name                 Object_Code/Object_Name     RA          DEC          V_Magnitude
01_12DEC02_N04066_0001    (12523)                     12:15:03.90 +04:22:14.2  18.9
01_12DEC02_N04066_0001    (12839)                     12:14:21.66 +04:38:23.4  20.0
01_12DEC02_N04066_0001    (15840) Hiroshiendou        12:19:10.50 +04:48:01.6  19.2
01_12DEC02_N04066_0001    (19909)                     12:17:03.70 +03:56:24.9  20.2
01_12DEC02_N04066_0001    (22702)                     12:14:59.91 +03:55:59.2  19.8
01_12DEC02_N04066_0001    (26430) Thomwilkason        12:20:29.81 +04:20:22.3  19.5
01_12DEC02_N04066_0001    (29135)                     12:16:33.92 +03:39:05.9  19.7
...
```

* **wcstools** library from (http://tdc-www.harvard.edu/software/wcstools/wcsprogsi.html). Note: we only need ```sky2xy``` to convert celestial coordinates to pixel coordinates. For example, to locate the object in the first line of ```faux_ephm.txt``` we run: ```sky2xy 01_12DEC02_N04066_0001_header.fits 12:15:03.90 +04:22:14.2```, where ```01_12DEC02_N04066_0001_header.fits``` is the FITs header (as a single line), followed by the RA/DEC values of the object. You get the pixel values relative the the large image: ```12:15:03.90 +04:22:14.2 J2000 -> 2739.350 2245.813```
* **runme.rb** script demonstrating basic usage.




