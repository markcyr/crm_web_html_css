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

  get '/contactsall' do
    @crm_app_name = "Mark's CRM"
    erb :contacts_all
  end

  get '/new' do
      @crm_app_name = "Mark's CRM"
    erb :new_contact
  end

  get '/about' do
      @crm_app_name = "Mark's CRM"
    erb :about
  end

  get '/edit' do
      @crm_app_name = "Mark's CRM"
    erb :edit
  end

  get '/delete' do
      @crm_app_name = "Mark's CRM"
    erb :delete
  end

  post '/contacts' do
    Contact.create(params)
    redirect to('/contacts')

  end

marty = {'first_name'=>"Marty", 'last_name'=>"McFly",'email'=>"marty@mcfly.com",'note'=>"son"}
Contact.create(marty)
george = {'first_name'=>"George", 'last_name'=>"McFly",'email'=>"george@mcfly.com",'note'=>"dad"}
Contact.create(george)
lorraine = {'first_name'=>"Lorraine", 'last_name'=>"McFly",'email'=>"lorraine@mcfly.com",'note'=>"mom"}
Contact.create(lorraine)
biff = {'first_name'=>"Biff", 'last_name'=>"Tannen",'email'=>"biff@tannen.com",'note'=>"friend"}
Contact.create(biff)
doc = {'first_name'=>"Doc", 'last_name'=>"Brown",'email'=>"doc@brown.com",'note'=>"partner"}
Contact.create(doc)
