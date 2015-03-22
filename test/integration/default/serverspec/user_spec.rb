require 'serverspec'
set :backend, :exec

describe user('ikuwow') do
    it { should exist }
    it { should belong_to_group 'ikuwow' }
    it { should have_home_directory '/home/ikuwow' }
end

%w{iku wow}.each do |u|
    describe user(u) do
        it { should exist}
    end
end
