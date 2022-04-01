Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 

  get "/interface" , to: "interface#input"
  get "/interface/help" , to: "interface#help"
  post "/interface" , to: "interface#create"#otan post aithma sto web page /interface tote
  #phgaine sto controller interface kai sto action help
end
