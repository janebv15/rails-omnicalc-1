Rails.application.routes.draw do
  get("/square/new" , { :controller => "calc", :action => "square" })

  get("/square/results", { :controller => "calc", :action => "square_results"})
  
  get("/square_root/new" , { :controller => "calc", :action => "square_root"})

  get("/square_root/results" , { :controller => "calc", :action => "square_root_results"})

  get("/random/new" , { :controller => "calc" , :action => "random"})

  get("/random/results" , { :controller => "calc" , :action => "random_results"})

  get("/payment/new" , { :controller => "calc" , :action => "payment"})

  get("/payment/results" , { :controller => "calc" , :action => "payment_results"})
end
