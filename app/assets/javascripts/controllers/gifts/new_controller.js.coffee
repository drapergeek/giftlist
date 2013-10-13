Giftlist.GiftsNewController = Ember.ObjectController.extend
  errorMessages: ''
  actions: {
    createGift: ->
      @_createGiftFromForm()

    escapePressed: ->
      @transitionToRoute('gifts')
  }

  _createGiftFromForm: ->
    gift = @get('model')
    gift.save().then(
      (object) => @_success(object)
      (error) => @_failure(error, @model)
    )

  _success:(object) ->
    @set('hasErrors', false)
    @_resetObject()
    @_focusOnNameField()

  _failure: (error, newGift) ->
    @set('hasErrors', true)
    @get('store').deleteRecord(newGift)

  _resetObject: ->
    @set('model', @store.createRecord('gift'))

  _focusOnNameField: ->
    $('#giftName').focus()
