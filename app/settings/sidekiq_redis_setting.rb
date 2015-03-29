#!/usr/bin/env ruby
#-*- coding:utf-8 -*-

class SidekiqRedisSetting < Settingslogic
  source "#{Rails.root}/config/sidekiq_redis.yml"
  namespace Rails.env

  def self.connect
    ENV["REDISTOGO_URL"] = "redis://#{SidekiqRedisSetting.host}:#{SidekiqRedisSetting.port}"
  end
end
