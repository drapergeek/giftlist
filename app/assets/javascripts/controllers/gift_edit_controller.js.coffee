Giftlist.GiftEditController = Ember.ObjectController.extend
  errorMessages: ''
  actions: {
    saveGift: (router) ->
      gift = @_createGiftFromForm()
      @transitionToRoute('gift', gift)

    escapePressed: ->
      @transitionToRoute('gifts')
  }

  _createGiftFromForm: ->
    gift = @get('model')
    gift.save().then(
      (object) => @_success(object)
      (error) => @_failure(error, @model)
    )
    gift

  _success:(object) ->
    @set('hasErrors', false)

  _failure: (error, newGift) ->
    @set('hasErrors', true)
    @get('store').deleteRecord(newGift)
