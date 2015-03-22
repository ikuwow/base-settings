require 'serverspec'
set :backend, :exec

case os[:family]
when 'ubuntu'
    describe service('ssh') do
        it { should be_enabled }
        it { should be_running }
    end
when 'redhat'
    describe service('sshd') do
        it { should be_enabled }
        it { should be_running }
    end
end
