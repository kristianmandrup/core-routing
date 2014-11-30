expect = require 'chai' .expect

core      = require '../../index'
utils     = core.util.utils

describe 'util' ->
  describe 'utils' ->
    # ...

    describe 'arrayIndexOf' ->
      specify 'works' ->
        expect(1).to.eql 1