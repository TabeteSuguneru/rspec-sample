require 'rails_helper'

describe Phone do
  # 連絡先ごとに重複した番号を許可しないこと
  it "does not allow buplicate phone number per contact" do
    contact = create(:contact)
    create(:home_phone,
      contact: contact,
      phone: '785-555-1234'
    )

    mobile_phone = build(:mobile_phone,
      contact: contact,
      phone: '785-555-1234'
    )

    mobile_phone.valid?
    expect(mobile_phone.errors[:phone]).to include('has already been taken')
  end

  # 2件の連絡先で同じ電話番号を共有できること
  it "allows two contacts to share a phone" do
    create(:home_phone,
      phone: '785-555-1234'
    )

    expect(build(:home_phone, phone: "785-555-1234")).to be_valid
  end

end
