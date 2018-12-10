require 'email_address'


Given("I have a data table of invalid emails") do |table|
  @invalid_emails_table = table.raw
end

Then("these emails should not be accepted") do
  @invalid_emails_table.each do |row|
    row.each do |email|
      expect(email).to be_a String
      expect(EmailAddress.valid? email).to be false
    end
  end
end

Given("I have a data table of valid emails") do |table|
  @valid_emails_table = table.raw
end

Then("these emails should be accepted") do
  @valid_emails_table.each do |row|
    row.each do |email|
      expect(email).to be_a String
      expect(EmailAddress.valid? email).to be true
    end
  end
end
