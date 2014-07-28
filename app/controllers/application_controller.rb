class ApplicationController < ActionController::Base

protect_from_forgery with: :exception
  
  def show
    @accounts = Accounts.find_by_id(params['id'])
    @username = Accounts.find_by_id(params['id'])
    @email = Accounts.find_by_id(params['id'])
    render 'show'
  end
  
  def new 
  end
  
  def create
    g = Accounts.new
    g.email = params['email']
    g.username = params['username']
    g.save
    redirect_to "/accountspage/#{ g.id }"
  end
end
