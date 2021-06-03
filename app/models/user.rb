class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :fullname, type: String
  field :username, type: String
  field :password, type: String

end

