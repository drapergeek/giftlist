Giftlist.GiftsRoute = Ember.Route.extend
  model: -> @store.findAll('gift')

  actions: {
    willTransition: (transition) ->
      @controller.set('displayRecordNotFound', false)
      if transition.targetName is 'gifts.new'
        @controller.set('displayNewGiftButton', false)
      else
        @controller.set('displayNewGiftButton', true)
  }
