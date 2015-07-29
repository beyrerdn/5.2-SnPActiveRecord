class Post < ActiveRecord::Base
  belongs_to :author

  validates_presence_of :title

  def self.posts_by_author(author_last_name)
    all.select{|post| post.author.last_name == author_last_name}.sort_by{|post| post.created_at}
  end

end
