require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      first_name: "First Name",
      last_name: "Last Name",
      nationality: "Nationality",
      email: "Email",
      registered_id: "Registered",
      phone_number: "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Nationality/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Registered/)
    expect(rendered).to match(/Phone Number/)
  end
end
