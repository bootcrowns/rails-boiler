require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      first_name: "MyString",
      last_name: "MyString",
      nationality: "MyString",
      email: "MyString",
      registered_id: "MyString",
      phone_number: "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input[name=?]", "student[first_name]"

      assert_select "input[name=?]", "student[last_name]"

      assert_select "input[name=?]", "student[nationality]"

      assert_select "input[name=?]", "student[email]"

      assert_select "input[name=?]", "student[registered_id]"

      assert_select "input[name=?]", "student[phone_number]"
    end
  end
end
