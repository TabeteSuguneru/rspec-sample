require 'rails_helper'

describe Phone do
  # 連絡先ごとに重複した番号を許可しないこと
  it "does not allow buplicate phone number per contact"

  # 2件の連絡先で同じ電話番号を共有できること
  it "allows two contacts to share a phone"

end
