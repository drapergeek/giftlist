Giftlist.GiftsNewView = Ember.View.extend
  header: 'Add a new Gift'
  saveButton: 'Add'

  didInsertElement: ->
    @$('#giftName').focus()

  keyDown: (event) ->
    if event.keyCode is 27
      @controller.send('escapePressed')
