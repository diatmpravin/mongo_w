class Browser
  include Mongoid::Document
  field :version, :type => Integer
  scope :recent, where(:version.gt => 3)
end