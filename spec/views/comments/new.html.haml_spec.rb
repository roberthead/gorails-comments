require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      user: nil,
      commentable: nil,
      parent_id: 1,
      body: nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input[name=?]", "comment[user_id]"

      assert_select "input[name=?]", "comment[commentable_id]"

      assert_select "input[name=?]", "comment[parent_id]"

      assert_select "input[name=?]", "comment[body]"
    end
  end
end
