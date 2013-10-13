Giftlist.GiftController = Ember.ObjectController.extend
  actions: {
    destroy: ->
      @_destroyGift()
  }

  _destroyGift: ->
    @content.deleteRecord()
    @content.save().then(
      (returnedGift) => @_successfulDestroy(returnedGift)
    )

  _successfulDestroy: (returnedGift) ->
    @transitionToRoute('gifts')
