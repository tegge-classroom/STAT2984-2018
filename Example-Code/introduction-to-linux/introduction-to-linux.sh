
# example bash file to explore some basic linux
# command line tools

# written by: Allison N. Tegge (ategge@vt.edu)

# data downloaded on January 22, 2018 from
# https://dasl.datadescription.com/datafile/housing-prices/
# https://dasl.datadescription.com/datafile/fuel-economy-2016/


# create a file
touch temp.txt

# add text to the file
echo “hello world.” >> temp.txt

# look at the top of the file
head housing-prices.txt

# look at the bottom of the file
tail housing-prices.txt

# how many houses are listed in file?
wc housing-prices.txt
# is that correct? Was the first line a house?

# search for the Audi TT Roaster quattro
grep "TT Roadster quattro" fuel-economy-2016.txt

# search for all Audis
grep Audi fuel-economy-2016.txt

# how many Audis?
grep Audi fuel-economy-2016.txt | wc

# some more advanced commands:

# create a frequency plot of the number of bedrooms
cut -f3 housing-prices.txt | sort | uniq -c

# look at the first few entries with over 2000 sqft 
awk '{if($2 >= 2000) print}' housing-prices.txt | head

# count the number houses over 2000 sqft
awk '{if($2 >= 2000) print}' housing-prices.txt | wc

# create a frequency plot of the number of bathrooms of houses 2000+ sqft
awk '{if($2 >= 2000) print}' housing-prices.txt | cut -f4 | sort | uniq -c
