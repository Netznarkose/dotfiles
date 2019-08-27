#!/usr/bin/env ruby
require 'pry-byebug'
require 'json'

class ImageParser
  PASSWORD = ENV["FIMAGE_PASSWORD"]
  USERNAME = ENV["FIMAGE_USERNAME"]
  DOMAIN   = ENV["FIMAGE_DOMAIN"]

  def perform(client, env, limit)
    images = fetch_images(client)['tags']
    sorted_images = sort_images(images)
    selected_images = sorted_images.fetch(env, sorted_images.values.flatten)

    all = selected_images.size
    limit ||= all

    puts selected_images.reverse.first(limit)
  end

  private

  def fetch_images(client)
    JSON.parse(`curl -u #{USERNAME}:#{PASSWORD} #{DOMAIN}/v2/bl_clients/#{client}/tags/list`)
  end

  def sort_images(images)
    results = sort_by_environment(images)
    results.map do |key, value|
      results[key] = nil
      results[key] = sort_by_version(value, key)
    end
    results
  end

  def sort_by_environment(images)
    results = { development: [], master: [], release: [], misc: [] }
    development = proc { |a| a.include?('development') } # Just to show that the case-statement also works with procs
    master      = proc { |a| a.include?('master') }
    release     = proc { |a| a.include?('release') }
    images.map do |image|
      case image
      when development then results[:development] << image
      when master      then results[:master]      << image
      when release     then results[:release]     << image
      else
        results[:misc] << image
      end
    end
    results
  end

  def sort_by_version(images, env)
    if env == :release
      images.sort_by { |a| a.split('-')[2].gsub('v', '').to_f }
    else
      images.sort_by { |a| a.split('-')[2].to_f }
    end
  end
end

CLIENTS = [
  'ac',
  'aok',
  'az',
  'azch',
  'bbo',
  'bw',
  'bywk',
  'ds',
  'ed',
  'eon',
  'hw',
  'kar',
  'pr',
  'qv',
  'shn',
  'um',
  'wl'
].freeze

args = ARGV
return puts "More then three arguments!\n\n[args: client=mandatory env=default=development, limit=default=all]" if args.size > 3
return puts "Add one of these clients\n\n#{CLIENTS.join(' ')}" if args.empty?
return puts "Add one of these clients\n\n#{CLIENTS.join(' ')}" unless CLIENTS.include?(args.first)

client = args.first
env    = args[1].nil? ? :all : args[1].to_sym
limit  = args[2].nil? ? nil : Integer(args[2])
ImageParser.new.perform(client, env, limit)
