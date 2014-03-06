chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'euphemism', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/euphemism')(@robot)

  it 'responds to request for euphemism', ->
    expect(@robot.respond).to.have.been.calledWith(/(euphemism|euph)( me)?/i)
