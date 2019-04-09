require 'test_helper'

class EventTest < ActiveSupport::TestCase
  describe Event do
    it { should belong_to :user}
  end
end
