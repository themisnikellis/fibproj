class InterfaceController < ApplicationController
 
  def input
    @subscribers = Subscriber.all
  end

  def help
  end

  def create
    #to subscriber einai object ths klashs-montelo Subscriber to opoio ginetai create des migrate file ;) Ekei sto mi
    #migrate orizeis ta attributes twn objects-tables ths klashs-object!
    @subscriber = Subscriber.new(name: params[:fname], email: params[:email],contact_num: params[:contact_num],address: params[:address],vatno: params[:vatno],taxoffice: params[:taxoffice])
    #puts @subscriber.name gia elegxo apla sto terminal
    #puts @subscriber.email
    #akoma oxi save sth db. Sto next line  ginetai save!
    #to params pairnei ta input!!
    #sundesh me API (xrhsh postman gia na ktalabeis ti thelei!)
 
    if @subscriber.save
     
      
      require "uri"
      require "json"
      require "net/http"

      url = URI("https://hooks.slack.com/services/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")

      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["Accept"] = "application/json"
      request["x-auth-token"] = "63332059-7a65-4c18-a151-756f40a0c8ca"
      request["Content-Type"] = "application/json"
      request.body = "{'text': 'A new user has made an account in fibair.gr'}"

      response = https.request(request)
     
      redirect_to interface_url
      
    else
      redirect_to "http://localhost:3000/interface/help"
    end
  end


  


end
