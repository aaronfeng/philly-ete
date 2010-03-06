URLS=$(cat <<END
http://farm4.static.flickr.com/3026/3350469949_1f34369330_b.jpg
http://farm1.static.flickr.com/135/326044514_cedf60b870_b.jpg 
http://farm2.static.flickr.com/1415/1293058478_1ada979158_b.jpg 
http://farm3.static.flickr.com/2304/2046126318_c0340e8865_b.jpg
http://farm2.static.flickr.com/1407/1481122250_2579c168e1_b.jpg
http://farm3.static.flickr.com/2008/2226095398_e9d7f5d970_b.jpg 
http://farm4.static.flickr.com/3014/2932775162_0528d9aaed_b.jpg 
http://farm2.static.flickr.com/1181/903725838_0e57eb470c_b.jpg 
http://farm1.static.flickr.com/214/492291973_6a401a2172_o.jpg 
http://farm1.static.flickr.com/135/326044514_cedf60b870_b.jpg
END
)

for url in $(echo "$URLS"); do
  fname=$(echo $url | tr / \\n | tail -n 1)
  #echo $url $fname
  if [ -e $fname ]; then
    echo "already have: $fname"
  else
    wget $url
  fi
done
