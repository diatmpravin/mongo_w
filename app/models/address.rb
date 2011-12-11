class Address
  include Mongoid::Document
  field :email, :type => String
  field :country, :type => String
  
  embedded_in :contact, :inverse_of => :address
end
