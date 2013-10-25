Giftlist.GiftsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('gift')
  deactivate: ->
    @controller.get('model').rollback()
