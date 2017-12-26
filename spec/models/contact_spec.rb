require 'rails_helper'

RSpec.describe Contact, type: :model do
  # 有効なファクトリを持つこと
  it "has a valid factory"

  # 姓と名とメールアドレスがあれば有効な状態であること
  it "it valid with a firstname, lstname and email"

  # 名がなければ無効な状態であること
  it "is invalid without a firstname"

  # 姓がなければ無効な状態であること
  it "is invalid without a lastname"

  # メールアドレスがなければ無効な状態であること
  it "is invalid without a email address"

  # 連絡先のフルネームを文字列として返すこと
  it "returns a contact's full name as astring"

  # 重複したメールアドレスなら無効な状態であること
  it "is invalid with a duplicate email address"

  # 連絡先のフルネームを文字列として返すこと
  it "retuens a contact's full name as a string"

  # 文字で姓をフィルタする
  describe "filter last name by letter"


    # マッチする文字の場合
    context "matching letters"
      # マッチした結果をソート済みの配列として返すこと
      it "returns a sorted array of results that"

    #マッチしない文字列の場合
    context "with non-matching letters"
      # マッチしなかったものは結果に含まれないこと
      it "omits results that do not match"
  
end
