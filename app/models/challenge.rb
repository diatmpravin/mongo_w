class Challenge
  include Mongoid::Document
  #accepts_nested_attributes_for :tasks
  #attr_accessible :name, :tasks
  field :name, :type => String
  embeds_many :tasks
end
