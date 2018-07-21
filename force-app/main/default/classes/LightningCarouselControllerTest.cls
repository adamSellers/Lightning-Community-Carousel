@isTest
public class LightningCarouselControllerTest {
    
    // test method
    static testMethod void testImages() {
        // create the list of images
        List<Lightning_Carousel_Image__c> testImages = new List<Lightning_Carousel_Image__c>();
        
        for (Integer i=0; i < 5; i++) {
            Lightning_Carousel_Image__c singleImage = new Lightning_Carousel_Image__c(Name='Filename: ' + i);
            
            testImages.add(singleImage);
        }
        insert testImages;
        
        // set the toAssert variable with the method to be tested
        List<Lightning_Carousel_Image__c> toAssert = LightningCarouselController.getCarouselImages(4);
        System.debug(JSON.serialize(toAssert));
        // assert some stuff
        System.assertEquals(4, toAssert.size());
    }
}