#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'clockwork'
include Clockwork

handler do |job|
  puts `ls -la`
  puts `pwd`
end

every(30.seconds, 'frequent.job')

