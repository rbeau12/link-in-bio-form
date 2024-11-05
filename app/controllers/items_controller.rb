class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end
  def backdoor
    
    render({:template=>"item_templates/backdoor"})
  end
  def post
    url=params.fetch(:link)
    description=params.fetch(:description)
    image=params.fetch(:image)
    c=Item.new
    c.link_url=url
    c.link_description=description
    c.thumbnail_url=image
    c.save
  end
end
