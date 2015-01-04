#!/bin/bash


x=$1
shift
y="$*"
mkdir -p $x/_posts/

if [ ! -f $x/index.html ]; then
cat<<EOF > $x/index.html
---
title: `echo "$x" | sed 's/^./\U&/g'`
layout: posts
---

{% for post in site.categories.$x  %}
   {% include onepost.html %}
{% endfor %}
EOF
fi
git add $x/*


name=`echo $y | sed 's/ /-/g'`
now=`date  "+%Y-%m-%d"`
file="$x/_posts/${now}-${name}.md"
cat <<EOF >> $file
---
title: $y
layout: post
author: $USER
excerpt: $y
---

EOF

git add $file
vi $file
