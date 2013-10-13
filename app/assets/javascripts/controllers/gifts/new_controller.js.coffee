Giftlist.GiftsNewController = Ember.Controller.extend
  errorMessages: ''
  actions: {
    createGift: ->
      @_createGiftFromForm()
  }

  _createGiftFromForm: ->
    newGift = Giftlist.Gift.createRecord(name: @name, price: @price)
    newGift.save().then(
      (object) => @_success(object)
      (error) => @_failure(error, newGift)
    )

  _success:(object) ->
    @set('errorMessages', '')
    @_clearFormFields()
    @_focusOnNameField()

  _failure: (error, newGift) ->
    @set('errorMessages', newGift.errors)
    @get('store').deleteRecord(newGift)

  _clearFormFields: ->
    @set('name', '')
    @set('price', '')

  _focusOnNameField: ->
    $('#giftName').focus()
