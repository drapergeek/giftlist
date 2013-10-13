Giftlist.GiftsRoute = Ember.Route.extend
  model: -> @store.findAll('gift')

  actions: {
    willTransition: ->
      @controller.set('displayRecordNotFound', false)
  }
