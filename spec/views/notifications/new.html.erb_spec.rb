require 'rails_helper'

RSpec.describe "notifications/new", type: :view do
  before(:each) do
    assign(:notification, Notification.new(
      user: nil,
      message: "MyString",
      is_active: false
    ))
  end

  it "renders new notification form" do
    render

    assert_select "form[action=?][method=?]", notifications_path, "post" do

      assert_select "input[name=?]", "notification[user_id]"

      assert_select "input[name=?]", "notification[message]"

      assert_select "input[name=?]", "notification[is_active]"
    end
  end
end
