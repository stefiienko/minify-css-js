#!/bin/sh

###CSS MINIFY
array_cs=(`find /var/www/html/project/css -type f -name "*.css"`);

for i in ${array_cs[@]};
        do
          	java -jar /opt/yuicompressor.jar --type=css $i -o $i
        done

###JS MINIFY
array_js=(`find /var/www/html/project/js -type f -name "*.js" | grep -v "ignore some js file"`);

for i in ${array_js[@]};
        do
          	java -jar /opt/yuicompressor.jar --type=js $i -o $i
        done
