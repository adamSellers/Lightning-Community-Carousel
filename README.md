# Lightning Community Carousel

This is a lightweight implementation of the lightning:carousel component. This contains a custom object for you to store your image references in the carousel component. 

## Dev, Build and Test
To install directly, click on [this package](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t6F000001uaAc)

Otherwise, do the following:

* clone or fork this repo
````
git clone https://github.com/adamSellers/Lightning-Community-Carousel.git
````
* Spin up a fresh scratch org
````
sfdx force:org:create -a carouselScratch
````
* Push that code!
````
sfdx force:source:push -u carouselScratch
````
* Revel in your new carousel goodness!
````
sfdx force:org:open -u carouselScratch
````

## Resources
Creates: 

1. Lightning_Carousel_Image__c object
2. Lightning Carousel component. 

Note: You must store your images as documents and then add the URL to the Image_URL__c field in the custom object for this to work. 

## Issues
None known, but given the amount of testing I normally perform... there's probably one or 500 in there.

