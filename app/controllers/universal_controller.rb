class UniversalController < ApplicationController # precreated class that we want to inherit stuff from
  def homepage
    render({ :template => "all_views_MF/homepage_view_MF" }) # rendering the HTML in the homepage_view_MF file. I believe template is just the name for the Rails gem for displaying HTML. Not sure though.
  end

  def rock
    moves = ["rock", "paper", "scissors"]
    @my_move = "rock"
    @comp_move = moves.sample
    
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template => "all_views_MF/results_view_MF" })
  end
end
