class User < ApplicationRecord
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def name
    [first_name, last_name].compact.join(' ')
  end

  private
  def password_required?
    new_record? ? super : false
  end
end
