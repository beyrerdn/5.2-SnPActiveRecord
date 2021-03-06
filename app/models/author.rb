class Author < ActiveRecord::Base
  has_many :posts

  validates_presence_of :first_name
  validates_presence_of :last_name

  def show_name
    "#{first_name} #{last_name}"
  end

end
