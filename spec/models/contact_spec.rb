require 'rails_helper'

RSpec.describe Contact, type: :model do
  # 姓と名とメールアドレスがあれば有効な状態であること
  it "it valid with a firstname, lstname and email"

  # 名がなければ無効な状態であること
  it "is invalid without a firstname"

  # 姓がなければ無効な状態であること
  it "is invalid without a lastname"

  # メールアドレスがなければ無効な状態であること
  it "is invalid without a email address"

  # 重複したメールアドレスなら無効な状態であること
  it "is invalid with a duplicate email address"

  # 連絡先のフルネームを文字列として返すこと
  it "retuens a contact's full name as a string"
end
