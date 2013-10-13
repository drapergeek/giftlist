Giftlist.GiftRoute = Ember.Route.extend
  model: (params) ->
    @get('store').find('gift', params.gift_id)

  actions: {
    error: ->
      @controllerFor('gifts').send('recordNotFound')
      @transitionTo('gifts')
  }
