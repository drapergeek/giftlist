Giftlist.GiftsController = Ember.ArrayController.extend
  displayRecordNotFound: false

  actions: {
    recordNotFound: ->
      @set('displayRecordNotFound', true)
  }
