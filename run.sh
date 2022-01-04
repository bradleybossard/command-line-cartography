curl 'https://www2.census.gov/geo/tiger/GENZ2014/shp/cb_2014_06_tract_500k.zip' -o cb_2014_06_tract_500k.zip
unzip -o cb_2014_06_tract_500k.zip

npm install -g shapefile
shp2json cb_2014_06_tract_500k.shp -o ca.json

npm install -g d3-geo-projection
geoproject 'd3.geoConicEqualArea().parallels([34, 40.5]).rotate([120, 0]).fitSize([960, 960], d)' < ca.json > ca-albers.json
