Rails.application.routes.draw do
  
  get("/", { :controller => "game", :action => "rules" })

  get("/square/new", { :controller => "game", :action => "square" })

  get("/square_root/new", { :controller => "game", :action => "square_root" })

  get("/payment/new", { :controller => "game", :action => "payment" })

  get("/random/new", { :controller => "game", :action => "random" })

  get("/square/results", { :controller => "game", :action => "square_results" })

  get("/square_root/results", { :controller => "game", :action => "square_root_results" })

  get("/payment/results", { :controller => "game", :action => "payment_results" })

  get("/random/results", { :controller => "game", :action => "random_results" })


end
