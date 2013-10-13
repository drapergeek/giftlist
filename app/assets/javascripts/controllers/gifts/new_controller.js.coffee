Giftlist.GiftsNewController = Ember.Controller.extend
  errorMessages: ''
  actions: {
    createGift: ->
      @_createGiftFromForm()
  }

  _createGiftFromForm: ->
    newGift = @store.createRecord('gift', name: @name, price: @price)
    newGift.save().then(
      (object) => @_success(object)
      (error) => @_failure(error, newGift)
    )

  _success:(object) ->
    @set('hasErrors', false)
    @_clearFormFields()
    @_focusOnNameField()

  _failure: (error, newGift) ->
    @set('hasErrors', true)
    @get('store').deleteRecord(newGift)

  _clearFormFields: ->
    @set('name', '')
    @set('price', '')

  _focusOnNameField: ->
    $('#giftName').focus()
