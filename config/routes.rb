Rails.application.routes.draw do
  get("/", {:controller => "omicalc", :action => "home"})
  get("/square/new", {:controller => "omicalc", :action => "square_new"})
  get("/square/results", {:controller => "omicalc", :action => "square_results"})
  get("/square_root/new", {:controller => "omicalc", :action => "square_root_new"})
  get("/square_root/results", {:controller => "omicalc", :action => "square_root_results"})
  get("/payment/new", {:controller => "omicalc", :action => "payment_new"})
  get("/payment/results", {:controller => "omicalc", :action => "payment_results"})
  get("/random/new", {:controller => "omicalc", :action => "random_new"})
  get("/random/results", {:controller => "omicalc", :action => "random_results"})
end

