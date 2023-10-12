# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string
#  role                   :string
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enum de roles
  enum role: { user: 'user',
                admin: 'admin',
  }, _default: 'user'
  
  # Validaciones
  validates :username, presence: { message: "Username field cannot be blank" }, uniqueness: { message: "Username is already in use" }

  #relaciones
    # Defino una foto al usuario
    has_one_attached :photo
    #Relación 1:n con modelo books y borrado en cascada
    has_many :books, dependent: :destroy
end
