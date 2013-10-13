Giftlist.GiftsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('gift')
