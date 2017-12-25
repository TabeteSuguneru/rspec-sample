require 'rails_helper'

describe Phone do
  # 連絡先ごとに重複した番号を許可しないこと
  it "does not allow buplicate phone number per contact" do
    contact = Contact.create(
      firstname: 'Joe',
      lastname: 'Tester',
      email: 'joetester@example.com'
    )

    contact.phones.create(
      phone_type: 'home',
      phone: '7855-555-1234'
    )

    mobile_phone = contact.phones.build(
      phone_type: 'mobile',
      phone: '7855-555-1234'
    )

    mobile_phone.valid?
    expect(mobile_phone.errors[:phone]).to include('has already been taken')
  end

  # 2件の連絡先で同じ電話番号を共有できること
  it "allows two contacts to share a phone" do
    contact = Contact.create(
      firstname: 'Joe',
      lastname: 'Tester',
      email: 'joetester@example.com'
    )
    contact.phones.create(
      phone_type: 'home',
      phone: '78-555-1234'
    )
    other_contact = Contact.new
    other_phone = other_contact.phones.build(
      phone_type: 'home',
      phone: '785-555-1234'
    )

    expect(other_phone).to be_valid
  end

end
