require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  setup do
    @member = members(:one)
  end

  test "visiting the index" do
    visit members_url
    assert_selector "h1", text: "Members"
  end

  test "should create member" do
    visit members_url
    click_on "New member"

    fill_in "Discord username", with: @member.discord_username
    fill_in "Email", with: @member.email
    fill_in "First name", with: @member.first_name
    fill_in "Grad date", with: @member.grad_date
    fill_in "Grade year", with: @member.grade_year
    check "Ieee hkn" if @member.ieee_hkn
    fill_in "Ieee membership grade", with: @member.ieee_membership_grade
    fill_in "Ieee membership number", with: @member.ieee_membership_number
    check "Ieee membership status" if @member.ieee_membership_status
    fill_in "Last name", with: @member.last_name
    fill_in "Linkedin username", with: @member.linkedin_username
    fill_in "Major", with: @member.major
    fill_in "Phone", with: @member.phone
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "should update Member" do
    visit member_url(@member)
    click_on "Edit this member", match: :first

    fill_in "Discord username", with: @member.discord_username
    fill_in "Email", with: @member.email
    fill_in "First name", with: @member.first_name
    fill_in "Grad date", with: @member.grad_date
    fill_in "Grade year", with: @member.grade_year
    check "Ieee hkn" if @member.ieee_hkn
    fill_in "Ieee membership grade", with: @member.ieee_membership_grade
    fill_in "Ieee membership number", with: @member.ieee_membership_number
    check "Ieee membership status" if @member.ieee_membership_status
    fill_in "Last name", with: @member.last_name
    fill_in "Linkedin username", with: @member.linkedin_username
    fill_in "Major", with: @member.major
    fill_in "Phone", with: @member.phone
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "should destroy Member" do
    visit member_url(@member)
    click_on "Destroy this member", match: :first

    assert_text "Member was successfully destroyed"
  end
end
