class Task
  include Mongoid::Document
  field :score
  field :score_by
  embedded_in :challenge, :inverse_of => :tasks
end