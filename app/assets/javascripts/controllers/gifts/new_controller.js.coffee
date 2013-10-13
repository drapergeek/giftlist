Giftlist.GiftsNewController = Ember.Controller.extend
  actions: {
    createGift: ->
      Giftlist.Gift.createRecord(name: @name, price: @price)
      @get('store').commit()
  }
