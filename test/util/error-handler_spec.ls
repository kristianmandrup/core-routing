core            = require '../../index'
errHandler      = core.util.ErrorHandler

msgStack   = []

expect          = require 'chai' .expect

describe 'ErrorHandler' ->
  before-each ->
    # use new ??
    errHandler._errorOutput = (msg) ->
      msgStack.push msg

  describe '_errorOutput' ->
    specify 'should set output to custom sink' ->

  describe '_logError' ->
    specify 'should output error to custom sink' ->
      errHandler._logError 'hello'
      expect(msgStack[0]).toBe 'error: hello'

