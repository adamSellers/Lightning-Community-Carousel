({
	onInit : function(component, event, helper) {
		var numberOfImages = component.get("v.numberOfImages");
        console.log('number of images to fetch: ' + numberOfImages);
        helper.getImages(component, event, numberOfImages);
	}
})