require "rspec"
require_relative "rally_api_spec_helper"

describe 'Rally API and SSO' do

  it 'should auth with an sso user' do
    config = RallyAPISpecHelper::TEST_SETUP.dup
    config[:rally_sso_url] = RallyAPISpecHelper::EXTRA_SETUP[:sso_url]

    if config[:rally_sso_url]
      rally = RallyAPI::RallyRestJson.new(config)
      rally.rally_sso_url.should_not be_nil
      rally.user.UserName.should_not be_nil
      puts rally.user.UserName
    end

  end

end