# Frozen-string-literal: true
# Copyright: 2012-2015 - MIT License
# Encoding: utf-8

require "rspec/helper"

describe "disable erb hook" do
  let(:env) { Jekyll::Assets::Env.new(stub_jekyll_site) }
  it "disables erb so that users cannot use Ruby." do
    expect(env.find_asset("failed.scss.erb").to_s).to eq \
      %Q{body { you: <%= "failed" %> }\n}
  end
end
