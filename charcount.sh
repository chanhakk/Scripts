#!/bin/bash
letters=(Aa Bb Cc Çç Dd Ee Ff Gg Hh Iı İi Jj Kk Ll Mm Nn Oo Öö Pp Rr Ss Şş Tt Uu Üü Vv Yy Zz)

for x in "${letters[@]}"
do
     echo "$x,"$(cat ~/words.txt | tr -dc "$x" | wc -c)
done
