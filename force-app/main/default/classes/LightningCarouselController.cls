public class LightningCarouselController {
    
    @AuraEnabled
    public static List<Lightning_Carousel_Image__c> getCarouselImages(Integer numberToRetrieve) {

        List<Lightning_Carousel_Image__c> carouselItems = new List<Lightning_Carousel_Image__c>(
        	[SELECT Name, Image_URL__c, Image_Heading__c, Image_Description__c, Image_Link__c from Lightning_Carousel_Image__c LIMIT :numberToRetrieve]
        );
        
        return carouselItems;
        
    }

}