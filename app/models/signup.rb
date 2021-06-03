class Signup
  include Mongoid::Document
  include Mongoid::Timestamps
  field :fullname, type: String
  field :username, type: String
  field :password_digest, type: String
end
