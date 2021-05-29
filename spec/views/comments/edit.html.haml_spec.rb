require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      user: nil,
      commentable: nil,
      parent_id: 1,
      body: nil
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input[name=?]", "comment[user_id]"

      assert_select "input[name=?]", "comment[commentable_id]"

      assert_select "input[name=?]", "comment[parent_id]"

      assert_select "input[name=?]", "comment[body]"
    end
  end
end
