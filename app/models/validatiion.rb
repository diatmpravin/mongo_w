class Validatiion
  include Mongoid::Document
  field :name, :type => String
  field :phone, :type => String
  field :email, :type => String
end
