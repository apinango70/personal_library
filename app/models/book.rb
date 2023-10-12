# == Schema Information
#
# Table name: books
#
#  id               :bigint           not null, primary key
#  title            :string
#  publication_year :date
#  isbn             :string
#  description      :text
#  user_id          :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Book < ApplicationRecord
  
  #Relación 1:n con modelo user
  belongs_to :user

end
