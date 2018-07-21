({
    getImages : function(component, event, numberOfImages) {
        
        console.log('helper called with ' + numberOfImages + ' images to pass into apex');
        var action = component.get("c.getCarouselImages");
        action.setParams({
            numberToRetrieve: numberOfImages
        });
        
        // Create a callback that is executed after 
        // the server-side action returns
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                // set the images in the component
                console.log('in the callback, success! ' + JSON.stringify(response.getReturnValue()));
                component.set("v.images", response.getReturnValue());
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                    errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
        $A.enqueueAction(action);
    }
})