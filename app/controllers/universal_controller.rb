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
    render({ :template => "all_views_MF/results_view_MF" }) # these render lines are all the same because I originally designed the HTML pages to accept the same input (using instance variables) regardless of which move the page was for
  end

  def paper
    moves = ["rock", "paper", "scissors"]
    @my_move = "paper"
    @comp_move = moves.sample
    
    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end
    render({ :template => "all_views_MF/results_view_MF" })
  end

  def scissors
    moves = ["rock", "paper", "scissors"]
    @my_move = "scissors"
    @comp_move = moves.sample
    
    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end

    render({ :template => "all_views_MF/results_view_MF" })
  end

end
