require 'serverspec'
set :backend, :exec

describe selinux do
    it { should be_disabled }
end
