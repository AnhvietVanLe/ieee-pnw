json.extract! member, :id, :first_name, :last_name, :email, :phone, :ieee_membership_number, :ieee_membership_grade, :ieee_membership_status, :ieee_hkn, :major, :grade_year, :grad_date, :linkedin_username, :discord_username, :created_at, :updated_at
json.url member_url(member, format: :json)
