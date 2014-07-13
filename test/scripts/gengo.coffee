require '../helper'

describe 'gengo', ->
  beforeEach (done) ->
    @kakashi.scripts = [require '../../src/scripts/gengo']
    @kakashi.users = [{ id: 'bouzuya', room: 'hitoridokusho' }]
    @kakashi.start().then done, done

  afterEach (done) ->
    @kakashi.stop().then done, done

  describe 'receive "@hubot gengo 1867"', ->
    it 'send "知りません"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot gengo 1867'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to.equal('知りません')
        .then (-> done()), done

  describe 'receive "@hubot gengo 1868"', ->
    it 'send "明治元年"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot gengo 1868'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to.equal('明治元年')
        .then (-> done()), done

  describe 'receive "@hubot gengo 1911"', ->
    it 'send "明治44年"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot gengo 1911'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to.equal('明治44年')
        .then (-> done()), done

  describe 'receive "@hubot gengo 1912"', ->
    it 'send "大正元年"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot gengo 1912'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to.equal('大正元年')
        .then (-> done()), done

  describe 'receive "@hubot gengo 1925"', ->
    it 'send "大正14年"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot gengo 1925'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to.equal('大正14年')
        .then (-> done()), done

  describe 'receive "@hubot gengo 1926"', ->
    it 'send "昭和元年"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot gengo 1926'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to.equal('昭和元年')
        .then (-> done()), done

  describe 'receive "@hubot gengo 1988"', ->
    it 'send "昭和63年"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot gengo 1988'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to.equal('昭和63年')
        .then (-> done()), done

  describe 'receive "@hubot gengo 1989"', ->
    it 'send "平成元年"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot gengo 1989'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to.equal('平成元年')
        .then (-> done()), done

  describe 'receive "@hubot gengo 2014"', ->
    it 'send "平成26年"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot gengo 2014'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to.equal('平成26年')
        .then (-> done()), done
