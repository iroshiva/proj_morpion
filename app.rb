require 'bundler'
Bundler.require
require 'pry'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/game'
require 'app/board'
require 'app/boardcase'
require 'app/application'
require 'views/show'



teste = Application.new
teste.perform


