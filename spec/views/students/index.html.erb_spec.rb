require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        first_name: "First Name",
        last_name: "Last Name",
        nationality: "Nationality",
        email: "Email",
        registered_id: "Registered",
        phone_number: "Phone Number"
      ),
      Student.create!(
        first_name: "First Name",
        last_name: "Last Name",
        nationality: "Nationality",
        email: "Email",
        registered_id: "Registered",
        phone_number: "Phone Number"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Nationality".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Registered".to_s, count: 2
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
  end
end
