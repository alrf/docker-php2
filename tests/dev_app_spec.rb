require 'serverspec'

set :backend, :exec

describe port(8000) do
  it { should be_listening }
end

describe "Process is running" do
  context command('docker exec -i dev-app pgrep -l php') do
    its(:stdout) { should contain('php') }
  end
end

describe "Port available" do
  context command('docker exec -i dev-app netstat -nap | grep 8000') do
    its(:stdout) { should contain('8000') }
  end
end

describe "Body content" do
  context command('curl http://127.0.0.1:8000') do
    its(:stdout) { should contain('Symfony Demo application') }
  end
end
