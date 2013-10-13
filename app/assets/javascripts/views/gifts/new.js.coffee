Giftlist.GiftsNewView = Ember.View.extend
  didInsertElement: ->
    @$('#giftName').focus()

  keyDown: (event) ->
    if event.keyCode is 27
      @controller.send('escapePressed')
