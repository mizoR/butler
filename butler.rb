#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'clockwork'
include Clockwork

handler do |job|
  puts `curl -X GET http://sexy-commandoo.herokuapp.com/`
  puts `curl -X GET http://h2m.herokuapp.com/`
end

every(300.seconds, 'frequent.job')

