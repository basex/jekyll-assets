# Frozen-string-literal: true
# Copyright: 2012-2015 - MIT License
# Encoding: utf-8

require "rspec/helper"

describe "font-awesome" do
  let(:env) { Jekyll::Assets::Env.new(stub_jekyll_site) }
  it "makes font-awesome available" do
    expect(env.find_asset("font-awesome").to_s).to match %r!fa-.+:before\s+{!
  end
end
