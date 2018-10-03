class User < ApplicationRecord
  # Include default devise modules. Others available are:
   #enum role: [:standard, :premium, :admin] 
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   #has_many :companies enum role: [:admin, :empresa, :cliente] after_initialize :set_default_role, :if => :new_record? def set_default_role self.role ||= :slave end end

  
#after_initialize do
#  if self.new_record?
#    self.role ||= :standard
#  end
#end

end
