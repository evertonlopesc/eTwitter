require 'rails_helper'

RSpec.describe "notifications/edit", type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!(
      user: nil,
      message: "MyString",
      is_active: false
    ))
  end

  it "renders the edit notification form" do
    render

    assert_select "form[action=?][method=?]", notification_path(@notification), "post" do

      assert_select "input[name=?]", "notification[user_id]"

      assert_select "input[name=?]", "notification[message]"

      assert_select "input[name=?]", "notification[is_active]"
    end
  end
end
