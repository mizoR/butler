#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'clockwork'
include Clockwork

handler do |job|
  puts `curl -X GET http://sexy-commandoo.herokuapp.com/`
end

every(60.seconds, 'frequent.job')

