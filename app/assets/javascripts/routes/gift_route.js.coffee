Giftlist.GiftRoute = Ember.Route.extend
 model: (params) ->
   @get('store').find('gift', params.gift_id)
