require 'spec_helper'

RSpec.describe Game do
    before(:each) do
        CSV.foreach('./data/games_dummy.csv', headers: true, header_converters: :symbol) do |row|
            @game_1= Game.new(row) 
            break
        end
    end

    describe 'Initialize' do
        it 'exists' do
            expect(@game_1).to be_an_instance_of(Game)
        end

        it 'has away_team_id attribute' do
            expect(@game_1.away_team_id).to eq(3)
        end

        it 'has home_team_id attribute' do
            expect(@game_1.home_team_id).to eq(6)
        end

        it 'has away_goals attribute' do
            expect(@game_1.away_goals).to eq(2)
        end

        it 'has home_goals attribute' do
            expect(@game_1.home_goals).to eq(3)
        end
    end

    describe 'total_goals' do
        it 'returns sum of away_goals and home_goals' do
            expected = @game_1.away_goals + @game_1.home_goals
            expect(@game_1.total_goals).to eq(expected)
        end
    end
    
end