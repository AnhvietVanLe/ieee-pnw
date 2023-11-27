require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference("Member.count") do
      post members_url, params: { member: { discord_username: @member.discord_username, email: @member.email, first_name: @member.first_name, grad_date: @member.grad_date, grade_year: @member.grade_year, ieee_hkn: @member.ieee_hkn, ieee_membership_grade: @member.ieee_membership_grade, ieee_membership_number: @member.ieee_membership_number, ieee_membership_status: @member.ieee_membership_status, last_name: @member.last_name, linkedin_username: @member.linkedin_username, major: @member.major, phone: @member.phone } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { discord_username: @member.discord_username, email: @member.email, first_name: @member.first_name, grad_date: @member.grad_date, grade_year: @member.grade_year, ieee_hkn: @member.ieee_hkn, ieee_membership_grade: @member.ieee_membership_grade, ieee_membership_number: @member.ieee_membership_number, ieee_membership_status: @member.ieee_membership_status, last_name: @member.last_name, linkedin_username: @member.linkedin_username, major: @member.major, phone: @member.phone } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference("Member.count", -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end
