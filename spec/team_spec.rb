require 'spec_helper'

RSpec.describe Team do
    before(:each) do
        CSV.foreach('./data/teams_dummy.csv', headers: true, header_converters: :symbol) do |row|
            @team_1 = Team.new(row)
            break
        end
    end

    describe 'Initialize' do
        it 'exists' do
            expect(@team_1).to be_an_instance_of(Team)
        end

        it 'has team_id attribute' do
            expect(@team_1.team_id).to eq(1)
        end

        it 'has team_name attribute' do
            expect(@team_1.team_name).to eq('Atlanta United')
        end
    end
end
