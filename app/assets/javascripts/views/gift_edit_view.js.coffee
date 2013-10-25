Giftlist.GiftEditView = Ember.View.extend
  templateName: 'gifts/new'
  header: 'Update Gift'
  saveButton: 'Save'

  keyDown: (event) ->
    if event.keyCode is 27
      @controller.send('escapePressed')
