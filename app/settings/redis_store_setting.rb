#!/usr/bin/env ruby
#-*- coding:utf-8 -*-

class RedisStoreSetting < Settingslogic
  source "#{Rails.root}/config/redis_store.yml"
  namespace Rails.env
end
