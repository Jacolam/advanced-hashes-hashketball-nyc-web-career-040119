# Write your code here!
require 'pry'
#
# def game_hash
# game_hash = {
#   :home => {
#     :team_name => "Brooklyn Nets",
#     :colors => ["Black","White"],
#     :players => {"Alan Anderson" => {
#       number: 0,
#       shoe: 16,
#       points: 22,
#       rebounds: 12,
#       assists: 12,
#       steals: 3,
#       blocks: 1,
#       slam_dunks: 1},
#     "Reggie Evans"=> {
#       number: 30,
#       shoe: 14,
#       points: 12,
#       rebounds: 12,
#       assists: 12,
#       steals: 12,
#       blocks: 12,
#       slam_dunks: 7},
#     "Brook Lopez"=> {
#       number: 11,
#       shoe: 17,
#       points: 17,
#       rebounds: 19,
#       assists: 10,
#       steals: 3,
#       blocks: 1,
#       slam_dunks: 15},
#     "Mason Plumee"=> {
#       number: 1,
#       shoe: 19,
#       points: 26,
#       rebounds: 12,
#       assists: 6,
#       steals: 3,
#       blocks: 8,
#       slam_dunks: 5},
#     "Jason Terry"=> {
#       number: 31,
#       shoe: 15,
#       points: 19,
#       rebounds: 2,
#       assists: 2,
#       steals: 4,
#       blocks: 11,
#       slam_dunks: 1}}
# },
# :away => {
#     :team_name => "Charlotte Hornets" ,
#     :colors => ["Turquoise","Purple"],
#     :players => {
#     "Jeff Adrien" => {
#       number: 4,
#       shoe: 18,
#       points: 10,
#       rebounds: 1,
#       assists: 1,
#       steals: 2,
#       blocks: 7,
#       slam_dunks: 2},
#     "Bismak Biyombo"=> {
#       number: 0,
#       shoe: 16,
#       points: 12,
#       rebounds: 4,
#       assists: 7,
#       steals: 7,
#       blocks: 15,
#       slam_dunks: 10},
#     "DeSagna Diop" => {
#       number: 2,
#       shoe: 14,
#       points: 24,
#       rebounds: 12,
#       assists:  12,
#       steals: 4,
#       blocks: 5,
#       slam_dunks: 5},
#     "Ben Gordon" => {
#       number: 8,
#       shoe: 15,
#       points: 33,
#       rebounds: 3,
#       assists: 2,
#       steals: 1,
#       blocks: 1,
#       slam_dunks: 0},
#     "Brendan Haywood" => {
#       number: 33,
#       shoe: 15,
#       points: 6,
#       rebounds: 12,
#       assists: 12,
#       steals: 22,
#       blocks: 5,
#       slam_dunks: 12}}
# }
# }
# end


def game_hash
    game_hash = {
        :home => {
            :team_name => "Brooklyn Nets",
            :colors => ["Black", "White"],
            :players => {"Alan Anderson" => {
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1
            }, "Reggie Evans" => {
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7
            }, "Brook Lopez" => {
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15
            }, "Mason Plumlee" => {
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 12,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks => 5
            }, "Jason Terry" => {
                :number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks => 1
                }
            }
        },
        :away => {
            :team_name => "Charlotte Hornets",
            :colors => ["Turquoise", "Purple"],
            :players => {"Jeff Adrien" => {
                :number => 4,
                :shoe => 18,
                :points => 10,
                :rebounds => 1,
                :assists => 1,
                :steals => 2,
                :blocks => 7,
                :slam_dunks => 2
            }, "Bismak Biyombo" => {
                :number => 0,
                :shoe => 16,
                :points => 12,
                :rebounds => 4,
                :assists => 7,
                :steals => 7,
                :blocks => 15,
                :slam_dunks => 10
            }, "DeSagna Diop" => {
                :number => 2,
                :shoe => 14,
                :points => 24,
                :rebounds => 12,
                :assists => 12,
                :steals => 4,
                :blocks => 5,
                :slam_dunks => 5
            }, "Ben Gordon" => {
                :number => 8,
                :shoe => 15,
                :points => 33,
                :rebounds => 3,
                :assists => 2,
                :steals => 1,
                :blocks => 1,
                :slam_dunks => 0
            }, "Brendan Haywood" => {
                :number => 33,
                :shoe => 15,
                :points => 6,
                :rebounds => 12,
                :assists => 12,
                :steals => 22,
                :blocks => 5,
                :slam_dunks => 12
                }
            }
        }
    }
end

def num_points_scored(players_name)
  scored = ""
  game_hash.each do |location,team_data|
    #binding.pry
    team_data[:players].each do |name , stats |
      #binding.pry
       if name == players_name
         #scored = stats[:points]
         #binding.pry
         return stats[:points]
         end
      end
    end
 #binding.pry
 #return scored # returns empty string still for some reason
end

def shoe_size(players_name)
  shoe = ""
  game_hash.each do |location,team_data|
    team_data[:players].each do |name ,stats|
      if name == players_name
        #binding.pry
        shoe = stats[:shoe]
        end
      end
    end
return shoe  # returns empty string still for some reason
end

def team_colors(team)
game_hash.each do |location ,team_data|
  #binding.pry
     if team_data[:team_name] == team
      #binding.pry
      return team_data[:colors]
    end
  end
end

def team_names
  names = []
  game_hash.each do |location, team_data|
    names.push(team_data[:team_name])
  end
  return names
end

def player_numbers(team)
  jersey_numbers = []
  game_hash.each do |location,team_data|
    #binding.pry
    if team_data[:team_name] == team
      team_data[:players].each do |player, stats|
        #binding.pry
        jersey_numbers << stats[:number]
      end

    end

  end
 # binding.pry
  jersey_numbers
end

def player_stats(player)
 game_hash.each do |location,team_data|
  team_data[:players].each do |name,stats|
  #binding.pry
  if name == player
      #binding.pry
      return stats
    end
    end
 end
end

def big_shoe_rebounds
 biggest_shoe = 0
 big_shoed_player = ""
  game_hash.each do |location,team_data|
    team_data[:players].each do |name,stats|
    #binding.pry
    if stats[:shoe] > biggest_shoe
      big_shoed_player = name
    end
    end
 end

    game_hash.each do |location,team_data|
  team_data[:players].each do |name,stats|
  #binding.pry
  if name == big_shoed_player
      #binding.pry
      return stats[:rebounds]
    end
    end
 end


end
