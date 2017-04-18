class Team
  attr_accessor :team_name, :players, :coach_name, :points

  def initialize (team_name, players, coach_name, points)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = points
  end

  # def get_team_name
  #   return(@team_name)
  # end

  # def get_coach_name
  #   return(@coach_name)
  # end

  # def get_team_players
  #   return (@players)
  # end

  def update_coach_name(new_coach_name)
    @coach_name = new_coach_name
  end

  def add_a_new_player(new_player_name)
    @players << new_player_name
    
  end

  def is_player_part_of_team(player_to_check_in_team)

    for player in @players do
      if player == player_to_check_in_team
       return true
     else
       next
     end
   end
     return false
   end

   def update_score(outcome_of_match)
    if outcome_of_match == "won"
      @points += 3
    elsif outcome_of_match == "draw"
      @points +=1
    end
    return
  end



end
