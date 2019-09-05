#!/usr/bin/env ruby

require 'diplomat'
require 'pry-byebug'

def fetch_production(client, env, stack, subject)
  configure_env(env)
  puts Diplomat::Kv.get("deploys/#{client}/#{stack}/#{subject}")
end

def fetch_staging(client, env)
  configure_env(env)
  puts Diplomat::Kv.get("deploys/#{client}/grey/release_image")
end

def configure_env(env)
  switch = env == 'production' ? 'pn' : 'sg'
  Diplomat.configure do |config|
    config.url = "http://consul-#{switch}.brandslisten.com:8500"
  end
end

args = ARGV
client  = args[0].nil? ? 'wl' : args[0].to_s
env     = args[1].nil? ? 'production' : args[1].to_s
stack   = args[2].nil? ? 'green' : args[2].to_s
subject = args[3].nil? ? 'release_image' : args[3].to_s

if env == 'production'
  fetch_production(client, env, stack, subject)
else
  fetch_staging(client, env)
end
