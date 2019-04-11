require 'test_helper'

class UserTest < ActiveSupport::TestCase
  describe User do
    it { should have_many :events}
  end
end
