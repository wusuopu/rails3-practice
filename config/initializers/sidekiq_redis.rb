#!/usr/bin/env ruby
#-*- coding:utf-8 -*-

#puts "SidekiqRedisSetting.status = #{SidekiqRedisSetting.status}"

#if SidekiqRedisSetting.status == 'open'

  #SidekiqRedisSetting.connect

  ## https://github.com/mperham/sidekiq/wiki/Advanced-Options
  #puts "SidekiqRedisSetting: #{SidekiqRedisSetting.host} #{SidekiqRedisSetting.port}"
  #sidekiq_redis_url = "redis://#{SidekiqRedisSetting.host}:#{SidekiqRedisSetting.port}/12"
  #sidekiq_redis_params = { :url => sidekiq_redis_url, :namespace => SidekiqRedisSetting.namespace}#, driver: :synchrony}

  #Sidekiq.configure_server do |config|
    #config.redis = sidekiq_redis_params

    #ActiveRecord::Base.configurations['production']['pool'] = 50
  #end

  #Sidekiq.configure_client do |config|
    #config.redis = sidekiq_redis_params
  #end

#end
