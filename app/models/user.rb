class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #  :recoverable, 
  #  :rememberable, 
  #  :validatable
  devise  :database_authenticatable,
          :registerable,
          :jwt_authenticatable,
          jwt_revocation_strategy: Devise::JWT::RevocationStrategies::Null
          # devise-jwt strategies: JTIMatcher, Blacklist, Whitelist
    

  # If you need to add something to the JWT payload, you can do it defining a 
  # jwt_payload method in the user model. It must return a Hash and be merged 
  # into the original one, or else it will be overriden. For instance:        
  # def jwt_payload
  #   super.merge({ 'foo' => 'bar' })
  # end
end
