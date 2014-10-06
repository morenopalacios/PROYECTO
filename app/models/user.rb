class User < ActiveRecord::Base

	  def self.search(search, page)
       where(['upper(nombre) like ?',
       "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
   end
	
	authenticates_with_sorcery!

	validates :password, length: { minimum: 3 } 
	validates :password, confirmation: true 
	validates :password_confirmation, presence: true 

	validates :email, uniqueness: true 

	 validates :nombre, :presence => true
     validates :documento, :presence => true

end
