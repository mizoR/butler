#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'clockwork'
include Clockwork

handler do |job|
  puts "Called #{job}"
end

every(10.seconds, 'frequent.job')

