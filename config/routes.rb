Rails.application.routes.draw do

  ##note that the ORDER of the gets below matters

  # Create
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  #Create the photo page
  get("/create_photo", {:controller => "photos", :action => "create_row"})
  #View the photos
  get("/", {:controller => "photos", :action => "index"})
  get("/photos", {:controller => "photos", :action => "index"})
  #View a specific photo
  get("/photos/:id", {:controller => "photos", :action => "show"})

  ##update
  get("/photos/:id/edit", {:controller => "photos", :action => "edit_form"})
  get("/update_photo/:id", {:controller => "photos", :action => "update_row"})

  #delete
  get("/delete_photo/:id", {:controller => "photos", :action => "destroy_row"})

end
