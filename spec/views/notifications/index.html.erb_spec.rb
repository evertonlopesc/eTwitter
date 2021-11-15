require 'rails_helper'

RSpec.describe "notifications/index", type: :view do
  before(:each) do
    assign(:notifications, [
      Notification.create!(
        user: nil,
        message: "Message",
        is_active: false
      ),
      Notification.create!(
        user: nil,
        message: "Message",
        is_active: false
      )
    ])
  end

  it "renders a list of notifications" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Message".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
