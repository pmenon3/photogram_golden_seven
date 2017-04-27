class PhotosController < ApplicationController

  def index

    @list_of_photos = Photo.all

    render("photos/index.html.erb")

  end

  def show

    @photo = Photo.find(params[:id])
    ##this comes from the user in this case so the argument takes the ID, which comes from the user, then uses the find argument to find the related row in the DB
    render("photos/show.html.erb")

  end

  def new_form
    render("photos/new_form.html.erb")
  end
  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/photos")

    ##render here would force us to search for all the instance variables we define vs. redirect is the easier route

  end

  def edit_form
    @photo = Photo.find(params[:id])
    old_caption = @photo.caption

    render("photos/edit_form.html.erb")

  end

  def update_row

    p = Photo.find(params[:id])
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/photos/#{p.id}")
  end

  def destroy_row
    @photo = Photo.find(params[:id])
    @photo.delete
    redirect_to("/photos")
  end

end
