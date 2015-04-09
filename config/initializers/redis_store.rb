#!/usr/bin/env ruby
#-*- coding:utf-8 -*-

FirstApp::Application.config.cache_store = :redis_store, RedisStoreSetting
