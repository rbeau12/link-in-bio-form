Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("/backdoor",{:controller=>"items",:action=>"backdoor"})
  post("/post",{:controller=>"items",:action=>"post"})
end
