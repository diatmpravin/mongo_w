class Person < Detail
  include Mongoid::Document
  field :name, :type => String
  
end
