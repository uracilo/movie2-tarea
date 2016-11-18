require 'test_helper'

class RankingTest < ActiveSupport::TestCase
  test "ranking_values_1_5" do
  	  @ranking = 3
     assert_includes  1..5, @ranking, "My test"  	
  end

  test "ranking_is_num" do      
      @ranking = 3
      assert_instance_of 3.class, @ranking, "ranking_is_num"
  end
end



