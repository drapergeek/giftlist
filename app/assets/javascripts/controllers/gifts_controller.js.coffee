Giftlist.GiftsController = Ember.ArrayController.extend
  displayRecordNotFound: false
  displayNewGiftButton: true

  actions: {
    recordNotFound: ->
      @set('displayRecordNotFound', true)
  }
