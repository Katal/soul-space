require 'rails_helper'

RSpec.describe "contents/new", type: :view do
  before(:each) do
    assign(:content, Content.new(
      :title => "MyString",
      :link => "MyString",
      :notes => "MyText",
      :user => nil
    ))
  end

  it "renders new content form" do
    render

    assert_select "form[action=?][method=?]", contents_path, "post" do

      assert_select "input#content_title[name=?]", "content[title]"

      assert_select "input#content_link[name=?]", "content[link]"

      assert_select "textarea#content_notes[name=?]", "content[notes]"

      assert_select "input#content_user_id[name=?]", "content[user_id]"
    end
  end
end
