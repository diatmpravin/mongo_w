class Contact
  include Mongoid::Document
  field :name, :type => String
  
  embeds_many :addresses
end
