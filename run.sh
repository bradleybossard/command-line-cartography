curl 'https://www2.census.gov/geo/tiger/GENZ2014/shp/cb_2014_06_tract_500k.zip' -o cb_2014_06_tract_500k.zip
unzip -o cb_2014_06_tract_500k.zip
npm install -g shapefile
shp2json cb_2014_06_tract_500k.shp -o ca.json

