# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work at all for the web-based version!
# You'll have to implement it from scratch.
require_relative 'contact'
require 'sinatra'

# Fake data

  get '/' do
    @crm_app_name = "Mark's CRM"
    erb :index
  end

  get '/contacts' do
    @crm_app_name = "Mark's CRM"
    erb :contacts

  end

  get '/contacts/new' do
      @crm_app_name = "Mark's CRM"
    erb :new_contact
  end

  get '/contacts/about' do
      @crm_app_name = "Mark's CRM"
    erb :about
  end

  get '/contacts/edit' do
      @crm_app_name = "Mark's CRM"
    erb :edit
  end

  get '/contacts/delete' do
      @crm_app_name = "Mark's CRM"
    erb :delete
  end

  post '/contacts' do
    Contact.create(params[:first_name], params[:last_name], params[:email], params[:note])
    redirect to('/contacts')
end
