Views should have no logic -- move it to the helpers 

button to delete 

hit a url -- look that up 

controller action to process the deleting of the item 

resources :lists do 
	resources: items 
	end 

links are always get requests -- so how do we trgier a delete  esp when browswers only support get and post requests. We have to fake it somehow. 
link is a get, post is a form submission 

button will be wrapped in a form 

very common 
next: authentication -- users and logging in, users have lists they can edit and lists they can't 

next after that -- users have lists and can only see their lists 
scope data to belong to the currenlty logged in user. 
