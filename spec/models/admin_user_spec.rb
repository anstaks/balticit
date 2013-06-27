require 'spec_helper'

describe AdminUser do

  let(:admin_user){ FactoryGirl.build(:admin_user) }

  it 'should be valid with valid attributes' do
    admin_user.should be_valid
  end
end
