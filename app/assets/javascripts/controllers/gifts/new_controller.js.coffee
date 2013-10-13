Giftlist.GiftsNewController = Ember.Controller.extend
  actions: {
    createGift: ->
      @_createGiftFromForm()
      @_clearFormFields()
      @_focusOnNameField()
  }

  _createGiftFromForm: ->
    Giftlist.Gift.createRecord(name: @name, price: @price)
    @get('store').commit()

  _clearFormFields: ->
    @set('name', '')
    @set('price', '')

  _focusOnNameField: ->
    $('#giftName').focus()
