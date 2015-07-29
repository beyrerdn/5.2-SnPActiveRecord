require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  test "author and post are associated through author_id in post" do
    author = Author.create(:first_name => "Kurt", :last_name => "Vonnegut", :bio => "Bio.")
    post = Post.create(:title => "Title", :body => "Everything was beautiful and nothing hurt.", :summary => "So it goes.")
    author.posts << post
    assert author.id == post.author_id, "Author id is not equal to the post's author_id."
  end
  # test "the truth" do
  #   assert true
  # end
end
