require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
      it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
      end
      it 'nicknameが6文字以下であれば登録できる' do
      end
      @user.nickname = 'sampl'
      @user.valid?
      it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
      end
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Nickname can't be blank"
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it 'passwordが空では登録できない' do
        @user.password= ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password= '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end
    end
  end
end