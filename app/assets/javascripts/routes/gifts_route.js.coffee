Giftlist.GiftsRoute = Ember.Route.extend
  model: -> Giftlist.Gift.find()
