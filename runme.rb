#!/usr/bin/env ruby -w
#
# Dependencies: sky2xy (WCSTools: http://tdc-www.harvard.edu/wcstools/)

module BatchSky2xy
	fits_header = '01_12DEC02_N04066_0001_header.fits'
	ephm_file   = 'faux_ephm.txt'

	File.open('faux_ephm.txt').each do |line|
	  RA  = line.split[3]
	  DEC = line.split[4]
	  puts "(RA,DEC) = (#{RA},#{DEC})"
	  result = `./wcstools/bin/sky2xy #{fits_header} #{RA} #{DEC}`
	  if not result.match(/offscale/i) # if coordinates within image
	  	puts result
	  end
	end
end
