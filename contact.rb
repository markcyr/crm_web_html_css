# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
#
# If your implementation of the Contact class is 'right', then you should see that all tests pass!
class Contact
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note

  @@contacts = []
  @@next_id = 1000

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @email = options['email']
    @note = options['note']
    @id = @@next_id
    puts options

    @@next_id += 1
  end

  def self.create(options)
    new_contact = new(options)
    @@contacts << new_contact
    new_contact
  end


  def self.all
    @@contacts
  end

  def self.all_count
    @@contacts.length
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find(id)
    @@contacts.each do |contact|
       if id == contact.id
       return contact
       end
    end
  end

  def self.find_by(value)
    @@contacts.each do |contact|
       if value == contact.first_name
          return contact
        elsif value == contact.last_name
            return contact
        elsif value == contact.email
          return contact
       end
    end
       return false
  end

  def self.delete(id)
    @@contacts.each do |contact|
      if id == contact.id
        @@contacts.delete contact
      end
    end
  end

  def self.update(id,attribute,value)
    @@contacts.each do |contact|
      if id == contact.id
        case attribute
          when "first_name"
              contact.first_name = value
          when "last_name"
              contact.last_name = value
          when "email"
            contact.email = value
          end
      end
    end
  end

  def self.delete_all
    @@contacts.clear
  end




  # Done via attr_accessor
  # def first_name
  #   @first_name
  # end
  #
  # def first_name=(new_name)
  #   @first_name = new_name
  # end


end
