require("minitest/autorun")
require('minitest/rg')
require_relative('./sports_club.rb')

class TestTeam< Minitest::Test

  def setup
    @team_details = Team.new("AFC",
         ["Jim", "Dod", "Fred", "Bob"],
         "Hank", 0)
  end

  def test_get_team_name
    # team_details = Team.new("AFC",
    #  ["Jim", "Dod", "Fred", "Bob"],
    #  "Hank")
    # team_name = @team_details.get_team_name 
    assert_equal("AFC",@team_details.team_name)
  end

  def test_get_coach_name
    # team_details = Team.new("AFC",
    #  ["Jim", "Dod", "Fred", "Bob"],
    #  "Hank",0)
    # coach_name = @team_details.get_coach_name 
    assert_equal("Hank",@team_details.coach_name)
  end

  def test_get_team_members
      # team_details = Team.new("AFC",
      #  ["Jim", "Dod", "Fred", "Bob"],
      #  "Hank")
     # team_members = @team_details.get_team_players
      assert_equal(["Jim", "Dod", "Fred", "Bob"], @team_details.players)
    end
def test_update_name_of_coach
  # team_details = Team.new("AFC",
  #  ["Jim", "Dod", "Fred", "Bob"],
  #  "Hank")
  @team_details.update_coach_name("Chico")
  assert_equal("Chico", @team_details.coach_name)
end

def test_add_new_player
  @team_details.add_a_new_player("Jerry")
  assert_equal(["Jim", "Dod", "Fred", "Bob", "Jerry"],@team_details.players)
end

def test_is_player_part_of_team
  expected = @team_details.is_player_part_of_team("Grant")
  assert_equal(false,expected)
end

def test_if_the_match_is_a_win
  @team_details.update_score("won")
  assert_equal(3,@team_details.points)
end

def test_if_the_match_is_a_draw
  @team_details.update_score("draw")
  assert_equal(1,@team_details.points)
end

def test_if_the_match_is_a_win
  @team_details.update_score("loss")
  assert_equal(0,@team_details.points)
end

end

