Giftlist.GiftsRoute = Ember.Route.extend
  model: -> @store.findAll('gift')
