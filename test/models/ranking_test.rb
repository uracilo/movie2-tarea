require 'test_helper'

class RankingTest < ActiveSupport::TestCase
  test "ranking_values_1_5" do
  	  @ranking = 3
     assert_includes  1..5, @ranking, "ranking_values_1_5"  	
  end

  test "ranking_is_num" do      
      @ranking = 3
      assert_instance_of 3.class, @ranking, "ranking_is_num"
  end

    test "ranking_is_not_num" do      
      @ranking = "3"
      assert_not_equal 3.class, @ranking, "ranking is not num"
  end
   test "ranking is the same" do      
      @ranking = 3
      @ranking2 = 3
      assert_same @ranking, @ranking2, "ranking is the same"
  end

 test "ranking is not the same" do      
      @ranking = 3
      @ranking2 = 5
      assert_not_same @ranking, @ranking2, "ranking is the same"
  end
 test "ranking_not_nil" do      
      @ranking= nil?
      assert_not_nil @ranking, "object nil "
  end
 test "test finished" do      
      
      flunk "Is not a failure is a test finished!!!! :) "
  end


end



