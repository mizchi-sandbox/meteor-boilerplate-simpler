assert = require('assert')

# laika can do a lot more http://arunoda.github.io/laika/
suite 'Default', ->
  test '1 + 1 equals 2', (done, server) ->
    server.eval ->
      emit('addition', 1 + 1)

    server.once 'addition', (res) ->
      assert.equal(res, 2)
      done();
