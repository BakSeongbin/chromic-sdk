#!/bin/bash

# Copyright (c) 2016 The Chromic Authors. All rights reserved.
# This script could helps to modify the names(chromebook, chrome, chromium) to chromic

# Chromium----------------------------------------------------------------------------------------------------------------------------------------------------------
# Don't modify automatically {29556,27854,11522,11520}. These are about Chromium licenses.
# Don't touch {29556,12838,12839,12869,12870,12586}.  These should modify partly later
find $1 -type f ! -name 29556 ! -name 27854 ! -name 11522 ! -name 11520 ! -name 12838 ! -name 12839 ! -name 12869 ! -name 12870 ! -name 12586 | xargs grep --color=always "Chromium" | less -r
find $1 -type f -name 29556 -or -name 27854 -or -name 11522 -or -name 11520 | xargs grep --color=always "Chromium" | less -r
echo "Will you modify? (Chromium -> Chromic)"
read input
if [ "$input" = "y" ]
then
	find $1 -type f ! -name 29556 ! -name 27854 ! -name 11522 ! -name 11520 ! -name 12838 ! -name 12839 ! -name 12869 ! -name 12870 ! -name 12586 | xargs sed -i 's/Chromium/Chromic/g' 
fi

# chromium----------------------------------------------------------------------------------------------------------------------------------------------------------
grep -r "chromium" $1 | grep -v "://" | grep --color=always "chromium" | less -r
# If this has results, U should modify by manually

# Chromebook----------------------------------------------------------------------------------------------------------------------------------------------------------
grep --color=always -r "Chromebook" $1 | less -r
echo "Will you modify? (Chromebook -> Chromic)"
read input
if [ "$input" = "y" ]
then
	find $1 -type f | xargs sed -i 's/Chromebook/Chromic/g' 
fi

# chromebook----------------------------------------------------------------------------------------------------------------------------------------------------------
grep -r "chromebook" $1 | grep -v "://" | grep --color=always "chromebook" | less -r
# If this has results, U should modify by manually

# Chrome----------------------------------------------------------------------------------------------------------------------------------------------------------
# Don't modify automatically {12837,12868,14611,14612,14614,14617,14618,15697,15950,17300,17306,28586,28587,13000,14447,14449,14450,14455,14458,14459,14462,14463,14464,14465,14466,14468,14473,14477,14479,24939,13052,13308,13777,13778,14071,24866,24907,24937,24936,12585,12957,15833,16386,16495}. These are about Chromebox,ChromeVox,Webstore,... 
# Don't touch {29556,12838,12839,12869,12870,12586}.  These should modify partly later
find $1 -type f ! -name 12837 ! -name 12838 ! -name 12839 ! -name 12868 ! -name 12869 ! -name 12870 ! -name 14611 ! -name 14612 ! -name 14614 ! -name 14617 ! -name 14618 ! -name 15697 ! -name 15950 ! -name 17300 ! -name 17306 ! -name 28586 ! -name 28587 ! -name 13000 ! -name 14447 ! -name 14449 ! -name 14450 ! -name 14455 ! -name 14458 ! -name 14459 ! -name 14462 ! -name 14463 ! -name 14464 ! -name 14465 ! -name 14466 ! -name 14468 ! -name 14473 ! -name 14477 ! -name 14479 ! -name 24939 ! -name 13052 ! -name 13308 ! -name 13777 ! -name 13778 ! -name 14071 ! -name 24866 ! -name 24907 ! -name 24937 ! -name 24936 ! -name 12585 ! -name 12586 ! -name 12957 ! -name 15833 ! -name 16386 ! -name 16495 ! -name 29556 | xargs grep --color=always "Chrome" | less -r
find $1 -type f -name 12837 -or -name 12838 -or  -name 12839 -or -name 12868 -or -name 12869 -or -name 12870 -or -name 14611 -or -name 14612 -or -name 14614 -or -name 14617 -or -name 14618 -or -name 15697 -or -name 15950 -or -name 17300 -or -name 17306 -or -name 28586 -or -name 28587 -or -name 13000 -or -name 14447 -or -name 14449 -or -name 14450 -or -name 14455 -or -name 14458 -or -name 14459 -or -name 14462 -or -name 14463 -or -name 14464 -or -name 14465 -or -name 14466 -or -name 14468 -or -name 14473 -or -name 14477 -or -name 14479 -or -name 24939 -or -name 13052 -or -name 13308 -or -name 13777 -or -name 13778 -or -name 14071 -or -name 24866 -or -name 24907 -or -name 24937 -or -name 24936 -or -name 12585 -or -name 12586 -or -name 12957 -or -name 15833 -or -name 16386 -or -name 16495 -or -name 29556 | xargs grep --color=always "Chrome" | less -r
echo "Will you modify? (Chrome -> Chromic)"
read input
if [ "$input" = "y" ]
then
	find $1 -type f ! -name 12837 ! -name 12838 ! -name 12839 ! -name 12868 ! -name 12869 ! -name 12870 ! -name 14611 ! -name 14612 ! -name 14614 ! -name 14617 ! -name 14618 ! -name 15697 ! -name 15950 ! -name 17300 ! -name 17306 ! -name 28586 ! -name 28587 ! -name 13000 ! -name 14447 ! -name 14449 ! -name 14450 ! -name 14455 ! -name 14458 ! -name 14459 ! -name 14462 ! -name 14463 ! -name 14464 ! -name 14465 ! -name 14466 ! -name 14468 ! -name 14473 ! -name 14477 ! -name 14479 ! -name 24939 ! -name 13052 ! -name 13308 ! -name 13777 ! -name 13778 ! -name 14071 ! -name 24866 ! -name 24907 ! -name 24937 ! -name 24936 ! -name 12585 ! -name 12586 ! -name 12957 ! -name 15833 ! -name 16386 ! -name 16495 ! -name 29556 | xargs sed -i 's/Chrome/Chromic/g'
fi

# chrome----------------------------------------------------------------------------------------------------------------------------------------------------------
echo "Will you modify? (chrome -> Chromic) 15981 15982 16285 14362"
read input
if [ "$input" = "y" ]
then
	find $1 -type f -name 15981 -or -name 15982 -or -name 16285 -or -name 14362 | xargs sed -i 's/chrome/Chromic/g'
fi

grep -r "chrome" $1 | grep -v "://" | grep -v ".com" | grep -v ".input" | grep -v ".debugger" | grep -v "top-" | grep --color=always "chrome" | less -r
# If this has results, U should modify(chromebook -> Chromic) by manually

# Chrom----------------------------------------------------------------------------------------------------------------------------------------------------------
# Don't touch {27839,27841,27858,27855,27833,27852,27838,27840,27856,27851,27844,27842,27861,27843,27847,27848,27834,27859,27857,27860,27836,27845,27832,27850,27846}.  These are about Chromoting
# Don't touch {29556,12838,12839,12869,12870,12586}.  These should modify partly later
find $1 -type f ! -name 27839 ! -name 27841 ! -name 27858 ! -name 27855 ! -name 27833 ! -name 27852 ! -name 27838 ! -name 27840 ! -name 27856 ! -name 27851 ! -name 27844 ! -name 27842 ! -name 27861 ! -name 27843 ! -name 27847 ! -name 27848 ! -name 27834 ! -name 27859 ! -name 27857 ! -name 27860 ! -name 27836 ! -name 27845 ! -name 27832 ! -name 27850 ! -name 27846 ! -name 29556 ! -name 12838 ! -name 12839 ! -name 12869 ! -name 12870 ! -name 12586 | xargs grep "Chrom" | grep -v "Chromium" | grep -v "Chrome" | grep -v "Chromic" | grep --color=always "Chrom" | less -r
echo "Will you modify? (Chrom -> Chromic) sl cs sk"
read input
if [ "$input" = "y" ]
then
	# sl
	find $1/sl -type f -name 17059 -or -name 17058 -or -name 17056 -or -name 16342 -or -name 16238 -or -name 17507 -or -name 28587 -or -name 15846 -or -name 15977 -or -name 16712 -or -name 18143 -or -name 16681 -or -name 18111 -or -name 16983 -or -name 16264 -or -name 15844 -or -name 13592 -or -name 16675 -or -name 15512 -or -name 16495 -or -name 16882 -or -name 17762 -or -name 16860 -or -name 15802 -or -name 16265 -or -name 18142 -or -name 16711 -or -name 15517 -or -name 12841 -or -name 16633 -or -name 27865 -or -name 28586 -or -name 16880 -or -name 13120 -or -name 17057 -or -name 15622 -or -name 17673 -or -name 15688 -or -name 15845 -or -name 15513 -or -name 15511 | xargs sed -i 's/Chrom/Chromic/g'
	# cs
	find $1/cs -type f -name 18131 -or -name 17319 -or -name 16342 -or -name 28587 -or -name 15846 -or -name 15977 -or -name 18372 -or -name 16218 -or -name 16712 -or -name 18143 -or -name 16632 -or -name 18111 -or -name 16983 -or -name 16362 -or -name 15844 -or -name 16382 -or -name 16381 -or -name 16675 -or -name 15512 -or -name 18373 -or -name 16495 -or -name 17762 -or -name 16860 -or -name 15802 -or -name 17630 -or -name 18142 -or -name 15802 -or -name 17630 -or -name 18142 -or -name 16711 -or -name 15517 -or -name 18545 -or -name 16633 -or -name 27865 -or -name 28586 -or -name 13120 -or -name 15622 -or -name 16380 -or -name 17673 -or -name 15845 -or -name 17624 -or -name 15513 -or -name 15511 -or -name 14590 | xargs sed -i 's/Chrom/Chromic/g'
	# sk
	find $1/sk -type f -name 17059 -or -name 17058 -or -name 18131 -or -name 17056 -or -name 15981 -or -name 16218 -or -name 16712 -or -name 16632 -or -name 16711 -or -name 16633 -or -name 17057 | xargs sed -i 's/Chrom/Chromic/g'	
fi

# chrom----------------------------------------------------------------------------------------------------------------------------------------------------------
# Don't touch {27839,27841,27858,27855,27833,27852,27838,27840,27856,27851,27844,27842,27861,27843,27847,27848,27834,27859,27857,27860,27836,27845,27832,27850,27846}.  These are about Chromoting
find $1 -type f ! -name 27839 ! -name 27841 ! -name 27858 ! -name 27855 ! -name 27833 ! -name 27852 ! -name 27838 ! -name 27840 ! -name 27856 ! -name 27851 ! -name 27844 ! -name 27842 ! -name 27861 ! -name 27843 ! -name 27847 ! -name 27848 ! -name 27834 ! -name 27859 ! -name 27857 ! -name 27860 ! -name 27836 ! -name 27845 ! -name 27832 ! -name 27850 ! -name 27846 | xargs grep "chrom" | grep -v "chromium" | grep -v "chrome" | grep --color=always "chrom" | less -r
# If this has results, U should modify by manually

# modify partly----------------------------------------------------------------------------------------------------------------------------------------------------------
find $1 -type f -name 29556 | xargs grep -i "Chrom" > tmp-29556
find $1 -type f -name 29556 | xargs grep -i --color=always "Chrom" |less -r
echo "will you modify? (Chromium -> chromic) 29556"
read input
if [ "$input" = "y" ]
then
	find $1 -type f -name 29556 | xargs sed -i 's/Chromium/Chromic/1'
	find $1/kn -type f -name 29556 | xargs sed -i 's/Chromic/Chromium/g'
	find $1/kn -type f -name 29556 | xargs sed -i 's/Chromium/Chromic/2'
	find $1/ta -type f -name 29556 | xargs sed -i 's/Chromic/Chromium/g'
	find $1/ta -type f -name 29556 | xargs sed -i 's/Chromium/Chromic/2'
fi

find $1 -type f -name 12838 | xargs grep -i "Chrom" > tmp-12838
find $1 -type f -name 12838 | xargs grep -i --color=always "Chrom" |less -r
echo "will you modify? (Chrome -> Chromic) 12838"
read input
if [ "$input" = "y" ]
then
	find $1 -type f -name 12838 | xargs sed -i 's/Chrome/Chromic/1'
fi

find $1 -type f -name 12839 | xargs grep -i "Chrom" > tmp-12839
find $1 -type f -name 12839 | xargs grep -i --color=always "Chrom" |less -r
echo "will you modify? (Chrome -> Chromic) 12839"
read input
if [ "$input" = "y" ]
then
	find $1 -type f -name 12839 | xargs sed -i 's/Chrome/Chromic/1'
fi

find $1 -type f -name 12869 | xargs grep -i "Chrom" > tmp-12869
find $1 -type f -name 12869 | xargs grep -i --color=always "Chrom" |less -r
echo "will you modify? (Chrome -> Chromic) 12869"
read input
if [ "$input" = "y" ]
then
	find $1 -type f -name 12869 | xargs sed -i 's/Chrome/Chromic/1'
fi

find $1 -type f -name 12870 | xargs grep -i "Chrom" > tmp-12870
find $1 -type f -name 12870 | xargs grep -i --color=always "Chrom" |less -r
echo "will you modify? (Chrome -> Chromic) 12870"
read input
if [ "$input" = "y" ]
then
	find $1 -type f -name 12870 | xargs sed -i 's/Chrome/Chromic/1'
fi

find $1 -type f -name 12586 | xargs grep -i "Chrom" > tmp-12586
find $1 -type f -name 12586 | xargs grep -i --color=always "Chrom" |less -r
echo "will you modify? (Chrome -> Chromic) 12586"
read input
if [ "$input" = "y" ]
then
	find $1 -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/2'
	find $1/et -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/et -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/ja -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/ja -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/hi -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/hi -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/tr -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/tr -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/zh-TW -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/zh-TW -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/ko -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/ko -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/lt -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/lt -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/am -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/am -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/te -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/te -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/mr -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/mr -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/kn -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/kn -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/ml -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/ml -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/ta -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/ta -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/bn -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/bn -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
	find $1/gu -type f -name 12586 | xargs sed -i 's/Chromic/Chrome/g'
	find $1/gu -type f -name 12586 | xargs sed -i 's/Chrome/Chromic/1'
fi
